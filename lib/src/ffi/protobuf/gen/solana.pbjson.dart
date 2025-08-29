///
//  Generated code. Do not modify.
//  source: solana.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use solanaTxInDescriptor instead')
const SolanaTxIn$json = const {
  '1': 'SolanaTxIn',
  '2': const [
    const {'1': 'to', '3': 1, '4': 1, '5': 12, '10': 'to'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 4, '10': 'amount'},
    const {'1': 'recent_blockhash', '3': 3, '4': 1, '5': 12, '10': 'recentBlockhash'},
    const {'1': 'signal', '3': 4, '4': 1, '5': 13, '10': 'signal'},
    const {'1': 'param', '3': 5, '4': 1, '5': 12, '10': 'param'},
  ],
};

/// Descriptor for `SolanaTxIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List solanaTxInDescriptor = $convert.base64Decode('CgpTb2xhbmFUeEluEg4KAnRvGAEgASgMUgJ0bxIWCgZhbW91bnQYAiABKARSBmFtb3VudBIpChByZWNlbnRfYmxvY2toYXNoGAMgASgMUg9yZWNlbnRCbG9ja2hhc2gSFgoGc2lnbmFsGAQgASgNUgZzaWduYWwSFAoFcGFyYW0YBSABKAxSBXBhcmFt');
@$core.Deprecated('Use solanaTxOutDescriptor instead')
const SolanaTxOut$json = const {
  '1': 'SolanaTxOut',
  '2': const [
    const {'1': 'Tx', '3': 1, '4': 1, '5': 9, '10': 'Tx'},
  ],
};

/// Descriptor for `SolanaTxOut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List solanaTxOutDescriptor = $convert.base64Decode('CgtTb2xhbmFUeE91dBIOCgJUeBgBIAEoCVICVHg=');
