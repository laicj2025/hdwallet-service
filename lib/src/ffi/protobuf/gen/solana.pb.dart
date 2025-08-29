///
//  Generated code. Do not modify.
//  source: solana.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SolanaTxIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SolanaTxIn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recentBlockhash', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signal', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'param', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SolanaTxIn._() : super();
  factory SolanaTxIn({
    $core.List<$core.int>? to,
    $fixnum.Int64? amount,
    $core.List<$core.int>? recentBlockhash,
    $core.int? signal,
    $core.List<$core.int>? param,
  }) {
    final _result = create();
    if (to != null) {
      _result.to = to;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (recentBlockhash != null) {
      _result.recentBlockhash = recentBlockhash;
    }
    if (signal != null) {
      _result.signal = signal;
    }
    if (param != null) {
      _result.param = param;
    }
    return _result;
  }
  factory SolanaTxIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SolanaTxIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SolanaTxIn clone() => SolanaTxIn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SolanaTxIn copyWith(void Function(SolanaTxIn) updates) => super.copyWith((message) => updates(message as SolanaTxIn)) as SolanaTxIn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SolanaTxIn create() => SolanaTxIn._();
  SolanaTxIn createEmptyInstance() => create();
  static $pb.PbList<SolanaTxIn> createRepeated() => $pb.PbList<SolanaTxIn>();
  @$core.pragma('dart2js:noInline')
  static SolanaTxIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SolanaTxIn>(create);
  static SolanaTxIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get to => $_getN(0);
  @$pb.TagNumber(1)
  set to($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get recentBlockhash => $_getN(2);
  @$pb.TagNumber(3)
  set recentBlockhash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecentBlockhash() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecentBlockhash() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get signal => $_getIZ(3);
  @$pb.TagNumber(4)
  set signal($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignal() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignal() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get param => $_getN(4);
  @$pb.TagNumber(5)
  set param($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasParam() => $_has(4);
  @$pb.TagNumber(5)
  void clearParam() => clearField(5);
}

class SolanaTxOut extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SolanaTxOut', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tx', protoName: 'Tx')
    ..hasRequiredFields = false
  ;

  SolanaTxOut._() : super();
  factory SolanaTxOut({
    $core.String? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory SolanaTxOut.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SolanaTxOut.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SolanaTxOut clone() => SolanaTxOut()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SolanaTxOut copyWith(void Function(SolanaTxOut) updates) => super.copyWith((message) => updates(message as SolanaTxOut)) as SolanaTxOut; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SolanaTxOut create() => SolanaTxOut._();
  SolanaTxOut createEmptyInstance() => create();
  static $pb.PbList<SolanaTxOut> createRepeated() => $pb.PbList<SolanaTxOut>();
  @$core.pragma('dart2js:noInline')
  static SolanaTxOut getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SolanaTxOut>(create);
  static SolanaTxOut? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tx => $_getSZ(0);
  @$pb.TagNumber(1)
  set tx($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
}

