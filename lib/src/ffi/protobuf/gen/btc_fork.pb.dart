///
//  Generated code. Do not modify.
//  source: btc_fork.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Utxo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Utxo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txHash', protoName: 'txHash')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vout', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scriptPubKey', protoName: 'scriptPubKey')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'derivedPath', protoName: 'derivedPath')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence')
    ..hasRequiredFields = false
  ;

  Utxo._() : super();
  factory Utxo({
    $core.String? txHash,
    $core.int? vout,
    $fixnum.Int64? amount,
    $core.String? address,
    $core.String? scriptPubKey,
    $core.String? derivedPath,
    $fixnum.Int64? sequence,
  }) {
    final _result = create();
    if (txHash != null) {
      _result.txHash = txHash;
    }
    if (vout != null) {
      _result.vout = vout;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (address != null) {
      _result.address = address;
    }
    if (scriptPubKey != null) {
      _result.scriptPubKey = scriptPubKey;
    }
    if (derivedPath != null) {
      _result.derivedPath = derivedPath;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    return _result;
  }
  factory Utxo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Utxo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Utxo clone() => Utxo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Utxo copyWith(void Function(Utxo) updates) => super.copyWith((message) => updates(message as Utxo)) as Utxo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Utxo create() => Utxo._();
  Utxo createEmptyInstance() => create();
  static $pb.PbList<Utxo> createRepeated() => $pb.PbList<Utxo>();
  @$core.pragma('dart2js:noInline')
  static Utxo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Utxo>(create);
  static Utxo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set txHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get vout => $_getIZ(1);
  @$pb.TagNumber(2)
  set vout($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVout() => $_has(1);
  @$pb.TagNumber(2)
  void clearVout() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get address => $_getSZ(3);
  @$pb.TagNumber(4)
  set address($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get scriptPubKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set scriptPubKey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasScriptPubKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearScriptPubKey() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get derivedPath => $_getSZ(5);
  @$pb.TagNumber(6)
  set derivedPath($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDerivedPath() => $_has(5);
  @$pb.TagNumber(6)
  void clearDerivedPath() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get sequence => $_getI64(6);
  @$pb.TagNumber(7)
  set sequence($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSequence() => $_has(6);
  @$pb.TagNumber(7)
  void clearSequence() => clearField(7);
}

class BtcForkTxInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BtcForkTxInput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..pc<Utxo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unspents', $pb.PbFieldType.PM, subBuilder: Utxo.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeAddressIndex', $pb.PbFieldType.OU3, protoName: 'changeAddressIndex')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeAddress', protoName: 'changeAddress')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'network')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'segWit', protoName: 'segWit')
    ..hasRequiredFields = false
  ;

  BtcForkTxInput._() : super();
  factory BtcForkTxInput({
    $core.String? to,
    $fixnum.Int64? amount,
    $core.Iterable<Utxo>? unspents,
    $fixnum.Int64? fee,
    $core.int? changeAddressIndex,
    $core.String? changeAddress,
    $core.String? network,
    $core.String? segWit,
  }) {
    final _result = create();
    if (to != null) {
      _result.to = to;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (unspents != null) {
      _result.unspents.addAll(unspents);
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (changeAddressIndex != null) {
      _result.changeAddressIndex = changeAddressIndex;
    }
    if (changeAddress != null) {
      _result.changeAddress = changeAddress;
    }
    if (network != null) {
      _result.network = network;
    }
    if (segWit != null) {
      _result.segWit = segWit;
    }
    return _result;
  }
  factory BtcForkTxInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BtcForkTxInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BtcForkTxInput clone() => BtcForkTxInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BtcForkTxInput copyWith(void Function(BtcForkTxInput) updates) => super.copyWith((message) => updates(message as BtcForkTxInput)) as BtcForkTxInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BtcForkTxInput create() => BtcForkTxInput._();
  BtcForkTxInput createEmptyInstance() => create();
  static $pb.PbList<BtcForkTxInput> createRepeated() => $pb.PbList<BtcForkTxInput>();
  @$core.pragma('dart2js:noInline')
  static BtcForkTxInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BtcForkTxInput>(create);
  static BtcForkTxInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get to => $_getSZ(0);
  @$pb.TagNumber(1)
  set to($core.String v) { $_setString(0, v); }
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
  $core.List<Utxo> get unspents => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fee => $_getI64(3);
  @$pb.TagNumber(4)
  set fee($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFee() => $_has(3);
  @$pb.TagNumber(4)
  void clearFee() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get changeAddressIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set changeAddressIndex($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChangeAddressIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearChangeAddressIndex() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get changeAddress => $_getSZ(5);
  @$pb.TagNumber(6)
  set changeAddress($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChangeAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearChangeAddress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get network => $_getSZ(6);
  @$pb.TagNumber(7)
  set network($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNetwork() => $_has(6);
  @$pb.TagNumber(7)
  void clearNetwork() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get segWit => $_getSZ(7);
  @$pb.TagNumber(8)
  set segWit($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSegWit() => $_has(7);
  @$pb.TagNumber(8)
  void clearSegWit() => clearField(8);
}

class BtcForkSignedTxOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BtcForkSignedTxOutput', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txHash', protoName: 'txHash')
    ..hasRequiredFields = false
  ;

  BtcForkSignedTxOutput._() : super();
  factory BtcForkSignedTxOutput({
    $core.String? signature,
    $core.String? txHash,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    if (txHash != null) {
      _result.txHash = txHash;
    }
    return _result;
  }
  factory BtcForkSignedTxOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BtcForkSignedTxOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BtcForkSignedTxOutput clone() => BtcForkSignedTxOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BtcForkSignedTxOutput copyWith(void Function(BtcForkSignedTxOutput) updates) => super.copyWith((message) => updates(message as BtcForkSignedTxOutput)) as BtcForkSignedTxOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BtcForkSignedTxOutput create() => BtcForkSignedTxOutput._();
  BtcForkSignedTxOutput createEmptyInstance() => create();
  static $pb.PbList<BtcForkSignedTxOutput> createRepeated() => $pb.PbList<BtcForkSignedTxOutput>();
  @$core.pragma('dart2js:noInline')
  static BtcForkSignedTxOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BtcForkSignedTxOutput>(create);
  static BtcForkSignedTxOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get txHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set txHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxHash() => clearField(2);
}

