///
//  Generated code. Do not modify.
//  source: tron.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use tronTxInputDescriptor instead')
const TronTxInput$json = const {
  '1': 'TronTxInput',
  '2': const [
    const {'1': 'rawData', '3': 1, '4': 1, '5': 9, '10': 'rawData'},
  ],
};

/// Descriptor for `TronTxInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tronTxInputDescriptor = $convert
    .base64Decode('CgtUcm9uVHhJbnB1dBIYCgdyYXdEYXRhGAEgASgJUgdyYXdEYXRh');
@$core.Deprecated('Use tronTxOutputDescriptor instead')
const TronTxOutput$json = const {
  '1': 'TronTxOutput',
  '2': const [
    const {'1': 'signatures', '3': 1, '4': 3, '5': 9, '10': 'signatures'},
  ],
};

/// Descriptor for `TronTxOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tronTxOutputDescriptor = $convert.base64Decode(
    'CgxUcm9uVHhPdXRwdXQSHgoKc2lnbmF0dXJlcxgBIAMoCVIKc2lnbmF0dXJlcw==');
@$core.Deprecated('Use tronMessageInputDescriptor instead')
const TronMessageInput$json = const {
  '1': 'TronMessageInput',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'isHex', '3': 2, '4': 1, '5': 8, '10': 'isHex'},
    const {'1': 'isTronHeader', '3': 3, '4': 1, '5': 8, '10': 'isTronHeader'},
  ],
};

/// Descriptor for `TronMessageInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tronMessageInputDescriptor = $convert.base64Decode(
    'ChBUcm9uTWVzc2FnZUlucHV0EhQKBXZhbHVlGAEgASgJUgV2YWx1ZRIUCgVpc0hleBgCIAEoCFIFaXNIZXgSIgoMaXNUcm9uSGVhZGVyGAMgASgIUgxpc1Ryb25IZWFkZXI=');
@$core.Deprecated('Use tronMessageOutputDescriptor instead')
const TronMessageOutput$json = const {
  '1': 'TronMessageOutput',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `TronMessageOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tronMessageOutputDescriptor = $convert.base64Decode(
    'ChFUcm9uTWVzc2FnZU91dHB1dBIcCglzaWduYXR1cmUYASABKAlSCXNpZ25hdHVyZQ==');
