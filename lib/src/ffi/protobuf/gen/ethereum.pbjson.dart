///
//  Generated code. Do not modify.
//  source: ethereum.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ethereumTxInDescriptor instead')
const EthereumTxIn$json = const {
  '1': 'EthereumTxIn',
  '2': const [
    const {'1': 'nonce', '3': 1, '4': 1, '5': 9, '10': 'nonce'},
    const {'1': 'to', '3': 2, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'gas_price', '3': 4, '4': 1, '5': 9, '10': 'gasPrice'},
    const {'1': 'gas', '3': 5, '4': 1, '5': 9, '10': 'gas'},
    const {'1': 'data', '3': 6, '4': 1, '5': 9, '10': 'data'},
    const {'1': 'network', '3': 7, '4': 1, '5': 9, '10': 'network'},
    const {'1': 'access_list', '3': 8, '4': 1, '5': 9, '10': 'accessList'},
    const {
      '1': 'max_priority_fee_per_gas',
      '3': 9,
      '4': 1,
      '5': 9,
      '10': 'maxPriorityFeePerGas'
    },
    const {
      '1': 'transaction_type',
      '3': 10,
      '4': 1,
      '5': 9,
      '10': 'transactionType'
    },
  ],
};

/// Descriptor for `EthereumTxIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethereumTxInDescriptor = $convert.base64Decode(
    'CgxFdGhlcmV1bVR4SW4SFAoFbm9uY2UYASABKAlSBW5vbmNlEg4KAnRvGAIgASgJUgJ0bxIUCgV2YWx1ZRgDIAEoCVIFdmFsdWUSGwoJZ2FzX3ByaWNlGAQgASgJUghnYXNQcmljZRIQCgNnYXMYBSABKAlSA2dhcxISCgRkYXRhGAYgASgJUgRkYXRhEhgKB25ldHdvcmsYByABKAlSB25ldHdvcmsSHwoLYWNjZXNzX2xpc3QYCCABKAlSCmFjY2Vzc0xpc3QSNgoYbWF4X3ByaW9yaXR5X2ZlZV9wZXJfZ2FzGAkgASgJUhRtYXhQcmlvcml0eUZlZVBlckdhcxIpChB0cmFuc2FjdGlvbl90eXBlGAogASgJUg90cmFuc2FjdGlvblR5cGU=');
@$core.Deprecated('Use ethereumTxOutDescriptor instead')
const EthereumTxOut$json = const {
  '1': 'EthereumTxOut',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `EthereumTxOut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethereumTxOutDescriptor = $convert.base64Decode(
    'Cg1FdGhlcmV1bVR4T3V0EhwKCXNpZ25hdHVyZRgBIAEoCVIJc2lnbmF0dXJl');
@$core.Deprecated('Use ethereumMsgInDescriptor instead')
const EthereumMsgIn$json = const {
  '1': 'EthereumMsgIn',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `EthereumMsgIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethereumMsgInDescriptor = $convert
    .base64Decode('Cg1FdGhlcmV1bU1zZ0luEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use ethereumMsgOutDescriptor instead')
const EthereumMsgOut$json = const {
  '1': 'EthereumMsgOut',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `EthereumMsgOut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethereumMsgOutDescriptor = $convert.base64Decode(
    'Cg5FdGhlcmV1bU1zZ091dBIcCglzaWduYXR1cmUYASABKAlSCXNpZ25hdHVyZQ==');
