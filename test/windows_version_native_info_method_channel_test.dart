import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:windows_version_native_info/windows_version_native_info_method_channel.dart';

void main() {
  MethodChannelWindowsVersionNativeInfo platform = MethodChannelWindowsVersionNativeInfo();
  const MethodChannel channel = MethodChannel('windows_version_native_info');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
