import 'dart:convert';

import 'chain.dart';

class Account {
  /// Accout coin type
  /// incldues FILECOIN, FILECOIN_BLS, DOGECOIN, LITECOIN, BITCOIN, ETHEREUM, SOLANA
  final String coinType;
  final String address;
  final String id;
  final String name;
  final int index;
  final String legalAmount;
  final String balance;
  final String filecoinId;
  final String totalAmount;
  final String rate;

  Account(
      {required this.coinType,
      required this.address,
      required this.id,
      required this.name,
      required this.index,
      this.legalAmount = '',
      this.balance = '',
      this.filecoinId = '',
      this.totalAmount = '',
      this.rate = ''});

  double get balanceNum => double.tryParse(balance) ?? 0;

  String get balanceString => balanceNum.toStringAsFixed(6);

  double get legalAmountNum => double.tryParse(legalAmount) ?? 0;

  String get legalAmountString => legalAmountNum.toStringAsFixed(2);

  double get totalAmountNum => double.tryParse(totalAmount) ?? 0;

  String get totalAmountString => totalAmountNum.toStringAsFixed(2);

  String get accountName => name;

  Chain get chain => Chain.getChain(coinType);

  String get shortAddress =>
      "${address.substring(0, 10)}...${address.substring(address.length - 10, address.length)}";

  bool get isFilecoinMiner =>
      address.substring(0, 2) == 'f3' || address.substring(0, 2) == 't3';

  Map<String, dynamic> toMap() {
    return {
      'coinType': coinType,
      'address': address,
      'id': id,
      'name': name,
      'index': index,
      'legalAmount': legalAmount,
      'balance': balance,
      'filecoinId': filecoinId
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      coinType: map['coinType'],
      address: map['address'],
      id: map['id'],
      name: map['name'],
      index: map['index'] ?? 0,
      legalAmount: map['legalAmount'] ?? '',
      balance: map['balance'] ?? '',
      filecoinId: map['filecoinId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Account.fromJson(String source) =>
      Account.fromMap(json.decode(source));

  Account copyWith(
      {String? coinType,
      String? address,
      String? id,
      String? name,
      int? index,
      String? legalAmount,
      String? balance,
      String? filecoinId,
      List? tokenList,
      String? totalAmount,
      String? rate}) {
    return Account(
        coinType: coinType ?? this.coinType,
        address: address ?? this.address,
        id: id ?? this.id,
        name: name ?? this.name,
        index: index ?? this.index,
        legalAmount: legalAmount ?? this.legalAmount,
        balance: balance ?? this.balance,
        filecoinId: filecoinId ?? this.filecoinId,
        totalAmount: totalAmount ?? this.totalAmount,
        rate: rate ?? this.rate);
  }
}
