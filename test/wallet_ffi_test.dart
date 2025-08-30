import 'package:flutter_test/flutter_test.dart';
import 'package:qmrmb_hdwallet_service/src/util/helper.dart';

void main() {
  group('Wallet ffi test', () {
    test('Hex to base58', () {
      final result = hexToBase58('0x121212');
      final input = base58ToHex(result);
      expect(input, '0x121212');
    });
  });
}
