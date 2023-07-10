import 'dart:ffi';
import 'bridge_generated.dart';

class RustLib {
  final WindowsVersionNativeInfoImpl api;

  factory RustLib() {
    const base = 'windows_version_native_info';
    const path = '$base.dll';
    late final dylib = DynamicLibrary.open(path);
    final WindowsVersionNativeInfoImpl api =
        WindowsVersionNativeInfoImpl(dylib);
    return RustLib._(api);
  }

  const RustLib._(this.api);
}
