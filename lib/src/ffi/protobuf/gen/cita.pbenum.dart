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

import 'package:protobuf/protobuf.dart' as $pb;

class Crypto extends $pb.ProtobufEnum {
  static const Crypto DEFAULT = Crypto._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const Crypto RESERVED = Crypto._(1, _omitEnumNames ? '' : 'RESERVED');

  static const $core.List<Crypto> values = <Crypto> [
    DEFAULT,
    RESERVED,
  ];

  static final $core.Map<$core.int, Crypto> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Crypto? valueOf($core.int value) => _byValue[value];

  const Crypto._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
