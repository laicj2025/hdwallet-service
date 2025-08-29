import 'dart:convert';

import 'account.dart';

class Wallet {
  final String id;
  final String name;
  final List<Account> accounts;
  final String mnemonic;
  final bool isIdentity;
  final int createAt;
  final String imagePath;
  final String passwordHint;

  /// 0 普通钱包
  /// 1 观察钱包
  /// 2 sbt钱包
  final int? watchWallet;

  /// backup state
  /// 0 can not export mnemonic
  /// 1 not backup
  /// 2 backup completed
  /// 3 backup FromPrivateKey
  final int backup;

  Wallet(
      {required this.id,
      required this.name,
      required this.accounts,
      this.mnemonic = '',
      this.passwordHint = '',
      required this.createAt,
      this.isIdentity = false,
      this.imagePath = '',
      this.backup = 0,
      this.watchWallet = 0});

  Map<String, dynamic> toMap({bool withMne = false}) {
    return {
      'id': id,
      'name': name,
      'accounts': accounts.map((x) => x.toMap()).toList(),
      'mnemonic': withMne ? mnemonic : '',
      'createAt': createAt,
      'isIdentity': isIdentity,
      'passwordHint': passwordHint,
      'imagePath': imagePath,
      'backup': backup,
      'watchWallet': watchWallet
    };
  }

  factory Wallet.fromMap(Map<String, dynamic> map) {
    return Wallet(
        id: map['id'],
        name: map['name'],
        accounts:
            List<Account>.from(map['accounts']?.map((x) => Account.fromMap(x))),
        createAt: map['createAt'] ?? 0,
        mnemonic: map['mnemonic'] ?? '',
        passwordHint: map['passwordHint'] ?? '',
        imagePath: map['imagePath'] ?? '',
        isIdentity: map['isIdentity'] ?? false,
        backup: map['backup'] ?? 0,
        watchWallet: map['watchWallet'] ?? 0);
  }

  String toJson({bool withMne = false}) => json.encode(toMap(withMne: withMne));

  factory Wallet.fromJson(String source) => Wallet.fromMap(json.decode(source));

  Wallet copyWith(
      {String? id,
      String? name,
      List<Account>? accounts,
      String? mnemonic,
      bool? isIdentity,
      int? createAt,
      String? imagePath,
      String? passwordHint,
      int? backup,
      int? watchWallet}) {
    return Wallet(
        id: id ?? this.id,
        name: name ?? this.name,
        accounts: accounts ?? this.accounts,
        mnemonic: mnemonic ?? this.mnemonic,
        isIdentity: isIdentity ?? this.isIdentity,
        createAt: createAt ?? this.createAt,
        imagePath: imagePath ?? this.imagePath,
        passwordHint: passwordHint ?? this.passwordHint,
        backup: backup ?? this.backup,
        watchWallet: watchWallet ?? this.watchWallet);
  }
}
