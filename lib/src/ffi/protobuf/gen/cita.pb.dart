//
//  Generated code. Do not modify.
//  source: cita.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'cita.pbenum.dart';

export 'cita.pbenum.dart';

class Transaction extends $pb.GeneratedMessage {
  factory Transaction({
    $core.String? to,
    $core.String? nonce,
    $fixnum.Int64? quota,
    $fixnum.Int64? validUntilBlock,
    $core.List<$core.int>? data,
    $core.List<$core.int>? value,
    $core.int? chainId,
    $core.int? version,
    $core.List<$core.int>? toV1,
    $core.List<$core.int>? chainIdV1,
  }) {
    final $result = create();
    if (to != null) {
      $result.to = to;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (quota != null) {
      $result.quota = quota;
    }
    if (validUntilBlock != null) {
      $result.validUntilBlock = validUntilBlock;
    }
    if (data != null) {
      $result.data = data;
    }
    if (value != null) {
      $result.value = value;
    }
    if (chainId != null) {
      $result.chainId = chainId;
    }
    if (version != null) {
      $result.version = version;
    }
    if (toV1 != null) {
      $result.toV1 = toV1;
    }
    if (chainIdV1 != null) {
      $result.chainIdV1 = chainIdV1;
    }
    return $result;
  }
  Transaction._() : super();
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Transaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'to')
    ..aOS(2, _omitFieldNames ? '' : 'nonce')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'quota', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'validUntilBlock', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'toV1', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'chainIdV1', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction clone() => Transaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction)) as Transaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get to => $_getSZ(0);
  @$pb.TagNumber(1)
  set to($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nonce => $_getSZ(1);
  @$pb.TagNumber(2)
  set nonce($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNonce() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonce() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get quota => $_getI64(2);
  @$pb.TagNumber(3)
  set quota($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuota() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuota() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get validUntilBlock => $_getI64(3);
  @$pb.TagNumber(4)
  set validUntilBlock($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidUntilBlock() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidUntilBlock() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get data => $_getN(4);
  @$pb.TagNumber(5)
  set data($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get value => $_getN(5);
  @$pb.TagNumber(6)
  set value($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get chainId => $_getIZ(6);
  @$pb.TagNumber(7)
  set chainId($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChainId() => $_has(6);
  @$pb.TagNumber(7)
  void clearChainId() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get version => $_getIZ(7);
  @$pb.TagNumber(8)
  set version($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearVersion() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get toV1 => $_getN(8);
  @$pb.TagNumber(9)
  set toV1($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasToV1() => $_has(8);
  @$pb.TagNumber(9)
  void clearToV1() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get chainIdV1 => $_getN(9);
  @$pb.TagNumber(10)
  set chainIdV1($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasChainIdV1() => $_has(9);
  @$pb.TagNumber(10)
  void clearChainIdV1() => clearField(10);
}

class UnverifiedTransaction extends $pb.GeneratedMessage {
  factory UnverifiedTransaction({
    Transaction? transaction,
    $core.List<$core.int>? signature,
    Crypto? crypto,
  }) {
    final $result = create();
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (signature != null) {
      $result.signature = signature;
    }
    if (crypto != null) {
      $result.crypto = crypto;
    }
    return $result;
  }
  UnverifiedTransaction._() : super();
  factory UnverifiedTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnverifiedTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnverifiedTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'transaction'), createEmptyInstance: create)
    ..aOM<Transaction>(1, _omitFieldNames ? '' : 'transaction', subBuilder: Transaction.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..e<Crypto>(3, _omitFieldNames ? '' : 'crypto', $pb.PbFieldType.OE, defaultOrMaker: Crypto.DEFAULT, valueOf: Crypto.valueOf, enumValues: Crypto.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnverifiedTransaction clone() => UnverifiedTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnverifiedTransaction copyWith(void Function(UnverifiedTransaction) updates) => super.copyWith((message) => updates(message as UnverifiedTransaction)) as UnverifiedTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnverifiedTransaction create() => UnverifiedTransaction._();
  UnverifiedTransaction createEmptyInstance() => create();
  static $pb.PbList<UnverifiedTransaction> createRepeated() => $pb.PbList<UnverifiedTransaction>();
  @$core.pragma('dart2js:noInline')
  static UnverifiedTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnverifiedTransaction>(create);
  static UnverifiedTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  Transaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction(Transaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
  @$pb.TagNumber(1)
  Transaction ensureTransaction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);

  @$pb.TagNumber(3)
  Crypto get crypto => $_getN(2);
  @$pb.TagNumber(3)
  set crypto(Crypto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCrypto() => $_has(2);
  @$pb.TagNumber(3)
  void clearCrypto() => clearField(3);
}

class SignedTransaction extends $pb.GeneratedMessage {
  factory SignedTransaction({
    UnverifiedTransaction? transactionWithSig,
    $core.List<$core.int>? txHash,
    $core.List<$core.int>? signer,
  }) {
    final $result = create();
    if (transactionWithSig != null) {
      $result.transactionWithSig = transactionWithSig;
    }
    if (txHash != null) {
      $result.txHash = txHash;
    }
    if (signer != null) {
      $result.signer = signer;
    }
    return $result;
  }
  SignedTransaction._() : super();
  factory SignedTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignedTransaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'transaction'), createEmptyInstance: create)
    ..aOM<UnverifiedTransaction>(1, _omitFieldNames ? '' : 'transactionWithSig', subBuilder: UnverifiedTransaction.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'txHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'signer', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignedTransaction clone() => SignedTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignedTransaction copyWith(void Function(SignedTransaction) updates) => super.copyWith((message) => updates(message as SignedTransaction)) as SignedTransaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignedTransaction create() => SignedTransaction._();
  SignedTransaction createEmptyInstance() => create();
  static $pb.PbList<SignedTransaction> createRepeated() => $pb.PbList<SignedTransaction>();
  @$core.pragma('dart2js:noInline')
  static SignedTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignedTransaction>(create);
  static SignedTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  UnverifiedTransaction get transactionWithSig => $_getN(0);
  @$pb.TagNumber(1)
  set transactionWithSig(UnverifiedTransaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionWithSig() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionWithSig() => clearField(1);
  @$pb.TagNumber(1)
  UnverifiedTransaction ensureTransactionWithSig() => $_ensure(0);

  /// SignedTransaction hash
  @$pb.TagNumber(2)
  $core.List<$core.int> get txHash => $_getN(1);
  @$pb.TagNumber(2)
  set txHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxHash() => clearField(2);

  /// public key
  @$pb.TagNumber(3)
  $core.List<$core.int> get signer => $_getN(2);
  @$pb.TagNumber(3)
  set signer($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSigner() => $_has(2);
  @$pb.TagNumber(3)
  void clearSigner() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
