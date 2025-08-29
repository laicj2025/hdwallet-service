///
//  Generated code. Do not modify.
//  source: btc_fork.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use utxoDescriptor instead')
const Utxo$json = const {
  '1': 'Utxo',
  '2': const [
    const {'1': 'txHash', '3': 1, '4': 1, '5': 9, '10': 'txHash'},
    const {'1': 'vout', '3': 2, '4': 1, '5': 5, '10': 'vout'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'address', '3': 4, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'scriptPubKey', '3': 5, '4': 1, '5': 9, '10': 'scriptPubKey'},
    const {'1': 'derivedPath', '3': 6, '4': 1, '5': 9, '10': 'derivedPath'},
    const {'1': 'sequence', '3': 7, '4': 1, '5': 3, '10': 'sequence'},
  ],
};

/// Descriptor for `Utxo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxoDescriptor = $convert.base64Decode('CgRVdHhvEhYKBnR4SGFzaBgBIAEoCVIGdHhIYXNoEhIKBHZvdXQYAiABKAVSBHZvdXQSFgoGYW1vdW50GAMgASgDUgZhbW91bnQSGAoHYWRkcmVzcxgEIAEoCVIHYWRkcmVzcxIiCgxzY3JpcHRQdWJLZXkYBSABKAlSDHNjcmlwdFB1YktleRIgCgtkZXJpdmVkUGF0aBgGIAEoCVILZGVyaXZlZFBhdGgSGgoIc2VxdWVuY2UYByABKANSCHNlcXVlbmNl');
@$core.Deprecated('Use btcForkTxInputDescriptor instead')
const BtcForkTxInput$json = const {
  '1': 'BtcForkTxInput',
  '2': const [
    const {'1': 'to', '3': 1, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'unspents', '3': 3, '4': 3, '5': 11, '6': '.transaction.Utxo', '10': 'unspents'},
    const {'1': 'fee', '3': 4, '4': 1, '5': 3, '10': 'fee'},
    const {'1': 'changeAddressIndex', '3': 5, '4': 1, '5': 13, '10': 'changeAddressIndex'},
    const {'1': 'changeAddress', '3': 6, '4': 1, '5': 9, '10': 'changeAddress'},
    const {'1': 'network', '3': 7, '4': 1, '5': 9, '10': 'network'},
    const {'1': 'segWit', '3': 8, '4': 1, '5': 9, '10': 'segWit'},
  ],
};

/// Descriptor for `BtcForkTxInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List btcForkTxInputDescriptor = $convert.base64Decode('Cg5CdGNGb3JrVHhJbnB1dBIOCgJ0bxgBIAEoCVICdG8SFgoGYW1vdW50GAIgASgDUgZhbW91bnQSLQoIdW5zcGVudHMYAyADKAsyES50cmFuc2FjdGlvbi5VdHhvUgh1bnNwZW50cxIQCgNmZWUYBCABKANSA2ZlZRIuChJjaGFuZ2VBZGRyZXNzSW5kZXgYBSABKA1SEmNoYW5nZUFkZHJlc3NJbmRleBIkCg1jaGFuZ2VBZGRyZXNzGAYgASgJUg1jaGFuZ2VBZGRyZXNzEhgKB25ldHdvcmsYByABKAlSB25ldHdvcmsSFgoGc2VnV2l0GAggASgJUgZzZWdXaXQ=');
@$core.Deprecated('Use btcForkSignedTxOutputDescriptor instead')
const BtcForkSignedTxOutput$json = const {
  '1': 'BtcForkSignedTxOutput',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
    const {'1': 'txHash', '3': 2, '4': 1, '5': 9, '10': 'txHash'},
  ],
};

/// Descriptor for `BtcForkSignedTxOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List btcForkSignedTxOutputDescriptor = $convert.base64Decode('ChVCdGNGb3JrU2lnbmVkVHhPdXRwdXQSHAoJc2lnbmF0dXJlGAEgASgJUglzaWduYXR1cmUSFgoGdHhIYXNoGAIgASgJUgZ0eEhhc2g=');
