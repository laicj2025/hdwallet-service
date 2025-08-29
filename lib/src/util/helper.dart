import 'dart:typed_data';

import 'package:fast_base58/fast_base58.dart';
import 'package:hex/hex.dart';
import 'package:pointycastle/digests/sha256.dart';

String decimalToHex(String? input) {
  if (input == null) return '0';
  final bigInt = BigInt.parse(input);
  return bigInt.toRadixString(16);
}

String hexToBase58(String input) {
  final address = input.startsWith('0x') ? input.substring(2) : input;
  return Base58Encode(HEX.decode(address));
}

String base58ToHex(String input) {
  return '0x' + HEX.encode(Base58Decode(input));
}

String toWif(String key, {bool isBtc = true}) {
  if (key.startsWith('0x')) {
    key = key.substring(2);
  }
  final initKey = isBtc ? '80${key}01' : '9e${key}01';
  final hash1 = hash256(Uint8List.fromList(hexToList(initKey)));
  final hexHash = listToHex(hash1).substring(2, 10);
  final hexKey = '$initKey$hexHash';
  return Base58Encode(Uint8List.fromList(hexToList(hexKey)));
}

String toPrivateKey(String key){
  final listKey = Base58Decode(key);
  final hexKey = listToHex(listKey);
  final initKey = hexKey.substring(0,hexKey.length-8);
  return initKey.substring(2,initKey.length-2);
}

Uint8List hash256(Uint8List buffer) {
  Uint8List _tmp = SHA256Digest().process(buffer);
  return SHA256Digest().process(_tmp);
}

List<int> hexToList(String hashHex) {
  var hash = List<int>.generate(hashHex.length ~/ 2,
      (i) => int.parse(hashHex.substring(i * 2, i * 2 + 2), radix: 16));
  return hash;
}

String listToHex(List<int> bytes) {
  StringBuffer buffer = StringBuffer();
  for (int part in bytes) {
    if (part & 0xff != part) {
      throw const FormatException("Non-byte integer detected");
    }
    buffer.write('${part < 16 ? '0' : ''}${part.toRadixString(16)}');
  }
  return buffer.toString();
}
