import 'package:flutter_test/flutter_test.dart';
import 'package:windows_version_native_info/windows_version_native_info.dart';
import 'package:windows_version_native_info/windows_version_native_info_platform_interface.dart';
import 'package:windows_version_native_info/windows_version_native_info_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWindowsVersionNativeInfoPlatform
    with MockPlatformInterfaceMixin
    implements WindowsVersionNativeInfoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WindowsVersionNativeInfoPlatform initialPlatform = WindowsVersionNativeInfoPlatform.instance;

  test('$MethodChannelWindowsVersionNativeInfo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWindowsVersionNativeInfo>());
  });

  test('getPlatformVersion', () async {
    WindowsVersionNativeInfo windowsVersionNativeInfoPlugin = WindowsVersionNativeInfo();
    MockWindowsVersionNativeInfoPlatform fakePlatform = MockWindowsVersionNativeInfoPlatform();
    WindowsVersionNativeInfoPlatform.instance = fakePlatform;

    expect(await windowsVersionNativeInfoPlugin.getPlatformVersion(), '42');
  });
}
