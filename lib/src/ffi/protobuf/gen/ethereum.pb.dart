///
//  Generated code. Do not modify.
//  source: ethereum.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EthereumTxIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EthereumTxIn',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'transaction'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nonce')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'to')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gasPrice')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gas')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'network')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accessList')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxPriorityFeePerGas')
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transactionType')
    ..hasRequiredFields = false;

  EthereumTxIn._() : super();
  factory EthereumTxIn({
    $core.String? nonce,
    $core.String? to,
    $core.String? value,
    $core.String? gasPrice,
    $core.String? gas,
    $core.String? data,
    $core.String? network,
    $core.String? accessList,
    $core.String? maxPriorityFeePerGas,
    $core.String? transactionType,
  }) {
    final _result = create();
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (to != null) {
      _result.to = to;
    }
    if (value != null) {
      _result.value = value;
    }
    if (gasPrice != null) {
      _result.gasPrice = gasPrice;
    }
    if (gas != null) {
      _result.gas = gas;
    }
    if (data != null) {
      _result.data = data;
    }
    if (network != null) {
      _result.network = network;
    }
    if (accessList != null) {
      _result.accessList = accessList;
    }
    if (maxPriorityFeePerGas != null) {
      _result.maxPriorityFeePerGas = maxPriorityFeePerGas;
    }
    if (transactionType != null) {
      _result.transactionType = transactionType;
    }
    return _result;
  }
  factory EthereumTxIn.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EthereumTxIn.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EthereumTxIn clone() => EthereumTxIn()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EthereumTxIn copyWith(void Function(EthereumTxIn) updates) =>
      super.copyWith((message) => updates(message as EthereumTxIn))
          as EthereumTxIn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumTxIn create() => EthereumTxIn._();
  EthereumTxIn createEmptyInstance() => create();
  static $pb.PbList<EthereumTxIn> createRepeated() =>
      $pb.PbList<EthereumTxIn>();
  @$core.pragma('dart2js:noInline')
  static EthereumTxIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EthereumTxIn>(create);
  static EthereumTxIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get to => $_getSZ(1);
  @$pb.TagNumber(2)
  set to($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gasPrice => $_getSZ(3);
  @$pb.TagNumber(4)
  set gasPrice($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasGasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearGasPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get gas => $_getSZ(4);
  @$pb.TagNumber(5)
  set gas($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGas() => $_has(4);
  @$pb.TagNumber(5)
  void clearGas() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get data => $_getSZ(5);
  @$pb.TagNumber(6)
  set data($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(6)
  void clearData() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get network => $_getSZ(6);
  @$pb.TagNumber(7)
  set network($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasNetwork() => $_has(6);
  @$pb.TagNumber(7)
  void clearNetwork() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get accessList => $_getSZ(7);
  @$pb.TagNumber(8)
  set accessList($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasAccessList() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccessList() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get maxPriorityFeePerGas => $_getSZ(8);
  @$pb.TagNumber(9)
  set maxPriorityFeePerGas($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasMaxPriorityFeePerGas() => $_has(8);
  @$pb.TagNumber(9)
  void clearMaxPriorityFeePerGas() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get transactionType => $_getSZ(9);
  @$pb.TagNumber(10)
  set transactionType($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasTransactionType() => $_has(9);
  @$pb.TagNumber(10)
  void clearTransactionType() => clearField(10);
}

class EthereumTxOut extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EthereumTxOut',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'transaction'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signature')
    ..hasRequiredFields = false;

  EthereumTxOut._() : super();
  factory EthereumTxOut({
    $core.String? signature,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory EthereumTxOut.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EthereumTxOut.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EthereumTxOut clone() => EthereumTxOut()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EthereumTxOut copyWith(void Function(EthereumTxOut) updates) =>
      super.copyWith((message) => updates(message as EthereumTxOut))
          as EthereumTxOut; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumTxOut create() => EthereumTxOut._();
  EthereumTxOut createEmptyInstance() => create();
  static $pb.PbList<EthereumTxOut> createRepeated() =>
      $pb.PbList<EthereumTxOut>();
  @$core.pragma('dart2js:noInline')
  static EthereumTxOut getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EthereumTxOut>(create);
  static EthereumTxOut? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
}

class EthereumMsgIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EthereumMsgIn',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'transaction'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  EthereumMsgIn._() : super();
  factory EthereumMsgIn({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory EthereumMsgIn.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EthereumMsgIn.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EthereumMsgIn clone() => EthereumMsgIn()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EthereumMsgIn copyWith(void Function(EthereumMsgIn) updates) =>
      super.copyWith((message) => updates(message as EthereumMsgIn))
          as EthereumMsgIn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumMsgIn create() => EthereumMsgIn._();
  EthereumMsgIn createEmptyInstance() => create();
  static $pb.PbList<EthereumMsgIn> createRepeated() =>
      $pb.PbList<EthereumMsgIn>();
  @$core.pragma('dart2js:noInline')
  static EthereumMsgIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EthereumMsgIn>(create);
  static EthereumMsgIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class EthereumMsgOut extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EthereumMsgOut',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'transaction'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signature')
    ..hasRequiredFields = false;

  EthereumMsgOut._() : super();
  factory EthereumMsgOut({
    $core.String? signature,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory EthereumMsgOut.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EthereumMsgOut.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EthereumMsgOut clone() => EthereumMsgOut()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EthereumMsgOut copyWith(void Function(EthereumMsgOut) updates) =>
      super.copyWith((message) => updates(message as EthereumMsgOut))
          as EthereumMsgOut; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EthereumMsgOut create() => EthereumMsgOut._();
  EthereumMsgOut createEmptyInstance() => create();
  static $pb.PbList<EthereumMsgOut> createRepeated() =>
      $pb.PbList<EthereumMsgOut>();
  @$core.pragma('dart2js:noInline')
  static EthereumMsgOut getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EthereumMsgOut>(create);
  static EthereumMsgOut? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
}
