import 'dart:developer';

class HdWalletError extends Error {
  final String? message;

  HdWalletError([this.message]);

  bool get ismnemonicError =>
      message != null && message!.contains('Error: mnemonic_word_invalid') ||
      message!.contains('mnemonic_checksum_invalid');

  bool get isPrivateKeyError =>
      message != null && message!.contains('does not match expected') ||
      message!.contains('Error: invalid_private_key');

  @override
  String toString() {
    log('[Hdwallet error] $message');
    return Error.safeToString(message).replaceAll('"', '');
  }
}
