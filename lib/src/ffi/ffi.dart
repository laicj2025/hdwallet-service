/// bindings for `libhdwallet`

import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart' as ffi;

// ignore_for_file: unused_import, camel_case_types, non_constant_identifier_names
final DynamicLibrary _dl = _open();
/// Reference to the Dynamic Library, it should be only used for low-level access
final DynamicLibrary dl = _dl;
DynamicLibrary _open() {
  if (Platform.isAndroid) return DynamicLibrary.open('libhdwallet_ffi.so');
  if (Platform.isIOS) return DynamicLibrary.executable();
  throw UnsupportedError('This platform is not supported.');
}

/// <p class="para-brief"> dispatch protobuf rpc call</p>
Pointer<ffi.Utf8> call_tcx_api_abm(
  Pointer<ffi.Utf8> hex_str,
) {
  return _call_tcx_api_abm(hex_str);
}
final _call_tcx_api_abm_Dart _call_tcx_api_abm = _dl.lookupFunction<_call_tcx_api_abm_C, _call_tcx_api_abm_Dart>('call_tcx_api_abm');
typedef _call_tcx_api_abm_C = Pointer<ffi.Utf8> Function(
  Pointer<ffi.Utf8> hex_str,
);
typedef _call_tcx_api_abm_Dart = Pointer<ffi.Utf8> Function(
  Pointer<ffi.Utf8> hex_str,
);

/// <p class="para-brief">生成助记词</p>
Pointer<ffi.Utf8> get_mnemonic() {
  return _get_mnemonic();
}
final _get_mnemonic_Dart _get_mnemonic = _dl.lookupFunction<_get_mnemonic_C, _get_mnemonic_Dart>('get_mnemonic');
typedef _get_mnemonic_C = Pointer<ffi.Utf8> Function();
typedef _get_mnemonic_Dart = Pointer<ffi.Utf8> Function();
