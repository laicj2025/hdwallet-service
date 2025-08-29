///
//  Generated code. Do not modify.
//  source: tron.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TronTxInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TronTxInput',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'transaction'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'rawData',
        protoName: 'rawData')
    ..hasRequiredFields = false;

  TronTxInput._() : super();
  factory TronTxInput({
    $core.String? rawData,
  }) {
    final _result = create();
    if (rawData != null) {
      _result.rawData = rawData;
    }
    return _result;
  }
  factory TronTxInput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TronTxInput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TronTxInput clone() => TronTxInput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TronTxInput copyWith(void Function(TronTxInput) updates) =>
      super.copyWith((message) => updates(message as TronTxInput))
          as TronTxInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TronTxInput create() => TronTxInput._();
  TronTxInput createEmptyInstance() => create();
  static $pb.PbList<TronTxInput> createRepeated() => $pb.PbList<TronTxInput>();
  @$core.pragma('dart2js:noInline')
  static TronTxInput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TronTxInput>(create);
  static TronTxInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rawData => $_getSZ(0);
  @$pb.TagNumber(1)
  set rawData($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRawData() => $_has(0);
  @$pb.TagNumber(1)
  void clearRawData() => clearField(1);
}

class TronTxOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TronTxOutput',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'transaction'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signatures')
    ..hasRequiredFields = false;

  TronTxOutput._() : super();
  factory TronTxOutput({
    $core.Iterable<$core.String>? signatures,
  }) {
    final _result = create();
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    return _result;
  }
  factory TronTxOutput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TronTxOutput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TronTxOutput clone() => TronTxOutput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TronTxOutput copyWith(void Function(TronTxOutput) updates) =>
      super.copyWith((message) => updates(message as TronTxOutput))
          as TronTxOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TronTxOutput create() => TronTxOutput._();
  TronTxOutput createEmptyInstance() => create();
  static $pb.PbList<TronTxOutput> createRepeated() =>
      $pb.PbList<TronTxOutput>();
  @$core.pragma('dart2js:noInline')
  static TronTxOutput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TronTxOutput>(create);
  static TronTxOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get signatures => $_getList(0);
}

class TronMessageInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TronMessageInput',
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
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isHex',
        protoName: 'isHex')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isTronHeader',
        protoName: 'isTronHeader')
    ..hasRequiredFields = false;

  TronMessageInput._() : super();
  factory TronMessageInput({
    $core.String? value,
    $core.bool? isHex,
    $core.bool? isTronHeader,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (isHex != null) {
      _result.isHex = isHex;
    }
    if (isTronHeader != null) {
      _result.isTronHeader = isTronHeader;
    }
    return _result;
  }
  factory TronMessageInput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TronMessageInput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TronMessageInput clone() => TronMessageInput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TronMessageInput copyWith(void Function(TronMessageInput) updates) =>
      super.copyWith((message) => updates(message as TronMessageInput))
          as TronMessageInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TronMessageInput create() => TronMessageInput._();
  TronMessageInput createEmptyInstance() => create();
  static $pb.PbList<TronMessageInput> createRepeated() =>
      $pb.PbList<TronMessageInput>();
  @$core.pragma('dart2js:noInline')
  static TronMessageInput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TronMessageInput>(create);
  static TronMessageInput? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.bool get isHex => $_getBF(1);
  @$pb.TagNumber(2)
  set isHex($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsHex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsHex() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isTronHeader => $_getBF(2);
  @$pb.TagNumber(3)
  set isTronHeader($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsTronHeader() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsTronHeader() => clearField(3);
}

class TronMessageOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TronMessageOutput',
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

  TronMessageOutput._() : super();
  factory TronMessageOutput({
    $core.String? signature,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory TronMessageOutput.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TronMessageOutput.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TronMessageOutput clone() => TronMessageOutput()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TronMessageOutput copyWith(void Function(TronMessageOutput) updates) =>
      super.copyWith((message) => updates(message as TronMessageOutput))
          as TronMessageOutput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TronMessageOutput create() => TronMessageOutput._();
  TronMessageOutput createEmptyInstance() => create();
  static $pb.PbList<TronMessageOutput> createRepeated() =>
      $pb.PbList<TronMessageOutput>();
  @$core.pragma('dart2js:noInline')
  static TronMessageOutput getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TronMessageOutput>(create);
  static TronMessageOutput? _defaultInstance;

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
