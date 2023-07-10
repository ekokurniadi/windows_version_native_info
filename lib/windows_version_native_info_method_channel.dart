import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'windows_version_native_info_platform_interface.dart';

/// An implementation of [WindowsVersionNativeInfoPlatform] that uses method channels.
class MethodChannelWindowsVersionNativeInfo extends WindowsVersionNativeInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('windows_version_native_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
