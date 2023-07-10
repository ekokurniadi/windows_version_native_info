import 'dart:ffi';
import 'dart:io';
import 'bridge_generated.dart';

class RustLib {
  final WindowsVersionNativeInfoImpl api;

  factory RustLib() {
    const base = 'windows_version_native_info';
    final path = Platform.isWindows ? '$base.dll' : 'lib$base.so';
    late final dylib = Platform.isIOS
        ? DynamicLibrary.process()
        : Platform.isMacOS
            ? DynamicLibrary.executable()
            : DynamicLibrary.open(path);
    final WindowsVersionNativeInfoImpl api =
        WindowsVersionNativeInfoImpl(dylib);
    return RustLib._(api);
  }

  const RustLib._(this.api);
}
