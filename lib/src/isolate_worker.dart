// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:isolate';

import 'package:hdwallet_service/src/hdwallet.dart';

import 'types/wallet.dart';

enum RecoverOption { mnemonic, privateKey, keystore }

enum CoinType { FILECOIN, BITCOIN, ETHEREUM, FILECOIN_BLS, LITECOIN, SOLANA, DOGECOIN, MTT}

// enum Network { TESTNET, MAINNET }

class IsolateWorker {
  late ReceivePort _receivePort;
  late SendPort _sendPort;
  Isolate? _isolate;

  Future<List<String>> getResult(String action, Map params) async {
    final path = await HdWallet.getKeystorePath();
    final _completer = Completer<List<String>>();
    params["action"] = action;
    params["path"] = path;
    _start(params, _completer);
    return _completer.future;
  }

  Future<void> _createIsolate() async {
    _receivePort = ReceivePort();
    _isolate = await Isolate.spawn(_entryPoint, _receivePort.sendPort);
  }

  void _listen(Map params, Completer completer) {
    _receivePort.listen((message) {
      if (message is SendPort) {
        _sendPort = message;
        _sendPort.send(params);
      }
      if (message is List<String>) {
        completer.complete(message);
      }
      if (message is String && message == 'done') {
        _isolate?.kill();
        _isolate = null;
      }
    });
  }

  Future<void> _start(Map params, Completer completer) async {
    if (_isolate == null) {
      _createIsolate();
    }
    _listen(params, completer);
  }
}

Future<void> _entryPoint(SendPort sendPort) async {
  var receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);
  receivePort.listen(
    (message) async {
      if (message is Map) {
        final path = message["path"];
        final nativeApi = HdWallet();
        try {
          await nativeApi.initWalletApi(path: path);
        } catch (e) {
          sendPort.send(['error', e.toString()]);
        }
        final action = message["action"];
        switch (action) {
          case "createWallet":
            try {
              final wallet = nativeApi.createWallet(
                  message["password"],
                  message["passwordHint"],
                  message["name"],
                  message["coinType"],
                  message['network'] ?? 'MAINNET',
                  isIdentity: message['isIdentity']);
              sendPort.send(['wallet', wallet.toJson(withMne: true)]);
              await Future.delayed(const Duration(milliseconds: 100));
              sendPort.send('done');
            } catch (err) {
              sendPort.send(['error', err.toString()]);
              await Future.delayed(const Duration(milliseconds: 100));
              sendPort.send('done');
            }
            break;
          case "recoverWallet":
            try {
              Wallet wallet;
              if (message["mnemonic"] != null) {
                wallet = nativeApi.recoverWalletFromMnemonic(
                  message["password"],
                  message["passwordHint"],
                  message["name"],
                  message["coinType"],
                  message["mnemonic"],
                  message['network'] ?? 'MAINNET',
                  message['encoding'],
                  isIdentity: message['isIdentity'],
                );
              } else if (message["privateKey"] != null) {
                wallet = nativeApi.recoverWalletFromPrivateKey(
                    message["password"],
                    message["passwordHint"],
                    message["name"],
                    message["coinType"],
                    message["privateKey"],
                    message['network'] ?? 'MAINNET');
              } else {
                sendPort.send('done');
                break;
              }
              sendPort.send(['wallet', wallet.toJson(withMne: true)]);
              await Future.delayed(const Duration(milliseconds: 100));
              sendPort.send('done');
            } catch (err) {
              sendPort.send(['error', err.toString()]);
              await Future.delayed(const Duration(milliseconds: 100));
              sendPort.send('done');
            }
            break;
          default:
            await Future.delayed(const Duration(milliseconds: 100));
            sendPort.send('done');
            break;
        }
      }
    },
  );
}
