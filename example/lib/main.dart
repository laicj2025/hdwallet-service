import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hdwallet_service/hdwallet_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Wallet? wallet;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Generate wallet'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            TextButton(
              onPressed: _createWallet,
              child: Row(
                children: const [Icon(Icons.wallet_travel), Text('创建钱包')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(wallet?.mnemonic ?? ''),
            ),
            const SizedBox(
              height: 20,
            ),
            if (wallet != null)
              ListView.builder(
                itemCount: wallet!.accounts.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final account = wallet!.accounts[index];
                  return ListTile(
                    title: Row(
                      children: [
                        Text(account.name),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(account.chain.name)
                      ],
                    ),
                    subtitle: Text(account.address),
                    trailing: TextButton(
                      child: Text('Export'),
                      onPressed: () {
                        _exportPrivateKey(account);
                      },
                    ),
                  );
                },
              )
          ],
        ),
      ),
    );
  }

  Future _createWallet() async {
    try {
      final w = await HdWallet.createWalletWithIsolate(
        '123456',
        '',
        'Test wallet',
        [CoinType.MTT],
      );
      if (mounted) {
        setState(() {
          wallet = w;
        });
      }
    } catch (e) {
      log(e.toString());
    }
  }

  _exportPrivateKey(Account account) async {
    final wallet = HdWallet();
    await wallet.initWalletApi();
    final privateKey = wallet.exportPrivateKey(account, '123456');
    log(privateKey);
  }
}
