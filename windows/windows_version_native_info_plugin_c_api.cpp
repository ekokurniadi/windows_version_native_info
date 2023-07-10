#include "include/windows_version_native_info/windows_version_native_info_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "windows_version_native_info_plugin.h"

void WindowsVersionNativeInfoPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  windows_version_native_info::WindowsVersionNativeInfoPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
