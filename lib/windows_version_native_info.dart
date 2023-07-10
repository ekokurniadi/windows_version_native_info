import 'package:windows_version_native_info/generated/bridge_generated.dart';
import 'package:windows_version_native_info/generated/rust.dart';


class WindowsVersionNativeInfo {
  Future<WindowsOSInfo> getPlatformVersion() async {
    final info = await RustLib().api.getWindowsInfo();
    return info;
  }
}
