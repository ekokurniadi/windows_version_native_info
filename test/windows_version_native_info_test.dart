import 'package:flutter_test/flutter_test.dart';
import 'package:windows_version_native_info/windows_version_native_info_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWindowsVersionNativeInfoPlatform
    with MockPlatformInterfaceMixin
    implements WindowsVersionNativeInfoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  
}
