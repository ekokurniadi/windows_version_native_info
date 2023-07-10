import 'package:flutter/material.dart';
import 'dart:async';

import 'package:windows_version_native_info/windows_version_native_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _windowsVersionNativeInfoPlugin = WindowsVersionNativeInfo();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    final platformVersion =
        await _windowsVersionNativeInfoPlugin.getPlatformVersion();

    setState(() {
      _platformVersion =
          '${platformVersion.edition} ${platformVersion.version} ${platformVersion.bitness}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
