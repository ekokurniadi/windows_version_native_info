import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'windows_version_native_info_method_channel.dart';

abstract class WindowsVersionNativeInfoPlatform extends PlatformInterface {
  /// Constructs a WindowsVersionNativeInfoPlatform.
  WindowsVersionNativeInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static WindowsVersionNativeInfoPlatform _instance = MethodChannelWindowsVersionNativeInfo();

  /// The default instance of [WindowsVersionNativeInfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelWindowsVersionNativeInfo].
  static WindowsVersionNativeInfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WindowsVersionNativeInfoPlatform] when
  /// they register themselves.
  static set instance(WindowsVersionNativeInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
