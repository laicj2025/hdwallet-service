import 'dart:developer';
import 'dart:io';

import 'package:fast_base58/fast_base58.dart';
import 'package:qmrmb_hdwallet_service/src/util/helper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'ffi/wallet_api.dart';
import 'isolate_worker.dart';
import 'types/account.dart';
import 'types/chain.dart';
import 'types/error.dart';
import 'types/wallet.dart';

class HdWallet {
  final _walletApi = WalletApi();
  final _xpubCommonKey = 'B888D25EC8C12BD5043777B1AC49F872';
  final _xpubCommonIv = '9C0C30889CBCC5E01AB5B2BB88715799';

  static Future<String> getKeystorePath() async {
    final dir = await getApplicationDocumentsDirectory();
    final keystoreDir = Directory('${dir.path}/keystore');
    if (!keystoreDir.existsSync()) {
      await keystoreDir.create();
    }
    return keystoreDir.path;
  }

  Future initWalletApi({String? path}) async {
    path ??= await getKeystorePath();
    _walletApi.initTokenCore(path, _xpubCommonKey, _xpubCommonIv, true);
  }

  static Future<Wallet> createWalletWithIsolate(
      String password, String passwordHint, String name, List<CoinType> types,
      {bool isIdentity = true}) async {
    final isolateWorker = IsolateWorker();
    final result = await isolateWorker.getResult("createWallet", {
      "password": password,
      "passwordHint": passwordHint,
      "name": name,
      "coinType": [for (var c in types) c.name],
      "isIdentity": isIdentity,
    });
    return _resultHandler(result, 1);
  }

  static Future<Wallet> recoverWalletWithIsolate(
      String password,
      String passwordHint,
      String name,
      RecoverOption option,
      String source,
      List<CoinType> types,
      {bool isIdentity = true}) async {
    final isolateWorker = IsolateWorker();
    final params = {
      "password": password,
      "passwordHint": passwordHint,
      "name": name,
      "coinType": [for (var c in types) c.name],
      "isIdentity": isIdentity,
      "backup": 3,
      "encoding": isIdentity ? '' : types.first.name
    };
    switch (option) {
      case RecoverOption.mnemonic:
        params["mnemonic"] = source;
        break;
      case RecoverOption.privateKey:
        params["privateKey"] = source;
        break;
      default:
        throw Exception('Unsupported recover option');
    }
    final result = await isolateWorker.getResult("recoverWallet", params);
    return _resultHandler(result, 3);
  }

  static _resultHandler(List<String> result, int backup) {
    if (result[0] == 'wallet') {
      final wallet = Wallet.fromJson(result[1]).copyWith(backup: backup);
      return wallet;
    } else if (result[0] == 'error') {
      throw HdWalletError(result[1]);
    } else {
      throw HdWalletError();
    }
  }

  Wallet createWallet(String password, String passwordHint, String name,
      List<String> coins, String network,
      {bool isIdentity = true}) {
    final result = _walletApi.hdStoreCreate(password, passwordHint, name);
    final mneResult = _walletApi.exportMnemonic(password, result.id);
    final mnemonic = mneResult.value as String;
    final accounts =
        _createCoinsAccount(password, name, coins, network, result.id);
    final wallet = Wallet(
        id: result.id,
        name: name,
        mnemonic: mnemonic,
        passwordHint: passwordHint,
        isIdentity: isIdentity,
        createAt: result.createdAt.toInt(),
        accounts: accounts);
    return wallet;
  }

  Wallet recoverWalletFromMnemonic(
      String password,
      String passwordHint,
      String name,
      List<String> coins,
      String mnemonic,
      String network,
      String encoding,
      {bool isIdentity = false}) {
    final result = _walletApi.hdStoreImport(
        mnemonic, password, "MNEMONIC", name, passwordHint, true, encoding);
    final mneResult = _walletApi.exportMnemonic(password, result.id);
    final accounts =
        _createCoinsAccount(password, name, coins, network, result.id);
    final wallet = Wallet(
        id: result.id,
        name: name,
        mnemonic: mneResult.value,
        isIdentity: isIdentity,
        passwordHint: passwordHint,
        createAt: result.createdAt.toInt(),
        accounts: accounts);
    return wallet;
  }

  Wallet recoverWalletFromPrivateKey(String password, String passwordHint,
      String name, List<String> coins, String privateKey, String network) {
    if (coins.first == 'SOLANA') {
      privateKey = base58ToHex(privateKey);
      if (privateKey.startsWith('0x')) {
        privateKey = privateKey.substring(2);
      }
      privateKey = privateKey.substring(0, 64);
    }
    if (coins.first == 'DOGECOIN') {
      privateKey = toPrivateKey(privateKey);
    }
    final result = _walletApi.privateKeyStoreImport(privateKey, password, name,
        passwordHint, true, coins.first == 'ETHEREUM' ? '' : coins.first);
    final accounts =
        _createCoinsAccount(password, name, coins, network, result.id);
    final wallet = Wallet(
        id: result.id,
        name: name,
        mnemonic: '',
        passwordHint: passwordHint,
        isIdentity: false,
        createAt: result.createdAt.toInt(),
        backup: 3,
        accounts: accounts);
    return wallet;
  }

  Account _createCoinAccount(
      String id, String password, String coinType, String path, network,
      {String segWit = '',
      String curve = '',
      String chainId = '',
      int index = 0}) {
    final response = _walletApi.keystoreCommonDerive(
        id, password, coinType, path, network, segWit, chainId, curve);
    var address = response.accounts[0].address;
    if (coinType == 'SOLANA') {
      address = hexToBase58(address);
    }
    return Account(
        coinType: coinType, address: address, id: id, name: '', index: index);
  }

  String exportMnemonic(String password, String id) {
    final mneResult = _walletApi.exportMnemonic(password, id);
    return mneResult.value;
  }

  String exportPrivateKey(Account account, String password) {
    var address = account.address;
    var hexAddress = address;
    if (account.coinType == 'SOLANA') hexAddress = base58ToHex(address);
    final result = _walletApi.exportPrivateKey(
      account.id,
      password,
      account.coinType,
      'MAINNET',
      hexAddress,
      account.chain.path,
    );
    switch (account.coinType) {
      case 'SOLANA':
        if (hexAddress.startsWith('0x')) hexAddress = hexAddress.substring(2);
        final privateKey = result.value + hexAddress;
        return hexToBase58(privateKey);
      case 'DOGECOIN':
        return toWif(result.value);
      case 'TRON':
        if (hexAddress.startsWith('0x')) hexAddress = hexAddress.substring(2);
    }
    return result.value;
  }

  Map<String, dynamic> signFilTx(id, password, address, unMessage) {
    log(address, name: 'address');
    final result =
        _walletApi.signFilTx(id, password, '', 'FILECOIN', address, unMessage);
    final sign = result.signature;
    return {"Type": sign.type, "Data": sign.data};
  }

  String signSolTx(id, password, address, unMessage) {
    log(address, name: 'address');
    unMessage['to'] = Base58Decode(unMessage['to']);
    unMessage['amount'] = $fixnum.Int64.parseInt(unMessage['lamports']);
    unMessage['recentBlockhash'] = Base58Decode(unMessage['recentBlockhash']);
    if (unMessage["param"] != null) {
      unMessage["param"] = Base58Decode(unMessage["param"]);
      ;
    }
    final result = _walletApi.signSolTx(
        id, password, '', 'SOLANA', base58ToHex(address), unMessage);
    return result.tx;
  }

  String signDogeTx(id, password, address, unMessage, network) {
    log(address, name: 'address');
    final result = _walletApi.signDogeTx(
        id, password, '', 'DOGECOIN', address, unMessage, network);
    return result.signature;
  }

  String signBitcoinTx(id, password, address, unMessage, network) {
    log(address, name: 'address');
    final result = _walletApi.signBitcoinTx(
        id, password, '', 'BITCOIN', address, unMessage, network);
    return result.signature;
  }

  String signEthTx(id, password, address, unMessage, network) {
    log(address, name: 'address');
    final result = _walletApi.signEthTx(
        id, password, '', 'ETHEREUM', address, unMessage, network);
    return result.signature;
  }

  String signEthMsg(
      String id, String password, String address, String message) {
    log(address, name: 'address');
    final result =
        _walletApi.signEthMsg(id, password, '', 'ETHEREUM', address, message);
    return result.signature;
  }

  String signMttMsg(
      String id, String password, String address, unMessage, network) {
    log(address, name: 'address');
    final result = _walletApi.signMttTx(
        id, password, '', 'MTT', address, unMessage, network);
    return result;
  }

  bool removeWallet(String id, String password) {
    final result = _walletApi.keystoreCommonDelete(id, password);
    return result is! String;
  }

  bool checkPassword(String id, String password) {
    try {
      _walletApi.keystoreCommonVerify(id, password);
      return true;
    } catch (e) {
      return false;
    }
  }

  List<Account> _createCoinsAccount(String password, String name,
      List<String> coins, String network, String id) {
    List<Account> accounts = [];
    for (var coinType in coins) {
      final chain = Chain.getChain(coinType);
      final _network = chain == Chain.mtt ? 'CITA' : network;
      final account = _createCoinAccount(
          id, password, chain.name, chain.path, _network,
          segWit: chain.segWit ?? '', curve: chain.curve ?? '');
      accounts.add(account.copyWith(name: name));
    }
    return accounts;
  }

  List<Account> addAccount(String password, String name, List<String> coins,
      String network, String id) {
    List<Account> accounts = [];
    for (var coinType in coins) {
      final chain = Chain.getChain(coinType);
      final _network = chain == Chain.mtt ? 'CITA' : network;
      final account = _createCoinAccount(
          id, password, chain.name, chain.path, _network,
          segWit: chain.segWit ?? '', curve: chain.curve ?? '');
      accounts.add(account.copyWith(name: name));
    }
    return accounts;
  }
}
