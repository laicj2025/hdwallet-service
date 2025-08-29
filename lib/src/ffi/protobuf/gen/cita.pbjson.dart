//
//  Generated code. Do not modify.
//  source: cita.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cryptoDescriptor instead')
const Crypto$json = {
  '1': 'Crypto',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'RESERVED', '2': 1},
  ],
};

/// Descriptor for `Crypto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cryptoDescriptor = $convert.base64Decode(
    'CgZDcnlwdG8SCwoHREVGQVVMVBAAEgwKCFJFU0VSVkVEEAE=');

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = {
  '1': 'Transaction',
  '2': [
    {'1': 'to', '3': 1, '4': 1, '5': 9, '10': 'to'},
    {'1': 'nonce', '3': 2, '4': 1, '5': 9, '10': 'nonce'},
    {'1': 'quota', '3': 3, '4': 1, '5': 4, '10': 'quota'},
    {'1': 'valid_until_block', '3': 4, '4': 1, '5': 4, '10': 'validUntilBlock'},
    {'1': 'data', '3': 5, '4': 1, '5': 12, '10': 'data'},
    {'1': 'value', '3': 6, '4': 1, '5': 12, '10': 'value'},
    {'1': 'chain_id', '3': 7, '4': 1, '5': 13, '10': 'chainId'},
    {'1': 'version', '3': 8, '4': 1, '5': 13, '10': 'version'},
    {'1': 'to_v1', '3': 9, '4': 1, '5': 12, '10': 'toV1'},
    {'1': 'chain_id_v1', '3': 10, '4': 1, '5': 12, '10': 'chainIdV1'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIOCgJ0bxgBIAEoCVICdG8SFAoFbm9uY2UYAiABKAlSBW5vbmNlEhQKBX'
    'F1b3RhGAMgASgEUgVxdW90YRIqChF2YWxpZF91bnRpbF9ibG9jaxgEIAEoBFIPdmFsaWRVbnRp'
    'bEJsb2NrEhIKBGRhdGEYBSABKAxSBGRhdGESFAoFdmFsdWUYBiABKAxSBXZhbHVlEhkKCGNoYW'
    'luX2lkGAcgASgNUgdjaGFpbklkEhgKB3ZlcnNpb24YCCABKA1SB3ZlcnNpb24SEwoFdG9fdjEY'
    'CSABKAxSBHRvVjESHgoLY2hhaW5faWRfdjEYCiABKAxSCWNoYWluSWRWMQ==');

@$core.Deprecated('Use unverifiedTransactionDescriptor instead')
const UnverifiedTransaction$json = {
  '1': 'UnverifiedTransaction',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.transaction.Transaction', '10': 'transaction'},
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
    {'1': 'crypto', '3': 3, '4': 1, '5': 14, '6': '.transaction.Crypto', '10': 'crypto'},
  ],
};

/// Descriptor for `UnverifiedTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unverifiedTransactionDescriptor = $convert.base64Decode(
    'ChVVbnZlcmlmaWVkVHJhbnNhY3Rpb24SOgoLdHJhbnNhY3Rpb24YASABKAsyGC50cmFuc2FjdG'
    'lvbi5UcmFuc2FjdGlvblILdHJhbnNhY3Rpb24SHAoJc2lnbmF0dXJlGAIgASgMUglzaWduYXR1'
    'cmUSKwoGY3J5cHRvGAMgASgOMhMudHJhbnNhY3Rpb24uQ3J5cHRvUgZjcnlwdG8=');

@$core.Deprecated('Use signedTransactionDescriptor instead')
const SignedTransaction$json = {
  '1': 'SignedTransaction',
  '2': [
    {'1': 'transaction_with_sig', '3': 1, '4': 1, '5': 11, '6': '.transaction.UnverifiedTransaction', '10': 'transactionWithSig'},
    {'1': 'tx_hash', '3': 2, '4': 1, '5': 12, '10': 'txHash'},
    {'1': 'signer', '3': 3, '4': 1, '5': 12, '10': 'signer'},
  ],
};

/// Descriptor for `SignedTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedTransactionDescriptor = $convert.base64Decode(
    'ChFTaWduZWRUcmFuc2FjdGlvbhJUChR0cmFuc2FjdGlvbl93aXRoX3NpZxgBIAEoCzIiLnRyYW'
    '5zYWN0aW9uLlVudmVyaWZpZWRUcmFuc2FjdGlvblISdHJhbnNhY3Rpb25XaXRoU2lnEhcKB3R4'
    'X2hhc2gYAiABKAxSBnR4SGFzaBIWCgZzaWduZXIYAyABKAxSBnNpZ25lcg==');

