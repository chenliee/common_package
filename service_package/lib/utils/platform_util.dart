import 'dart:io';

import 'package:flutter/foundation.dart';

class PlatformUtil {
  final String _platform;

  PlatformUtil() : _platform = _detectPlatform();

  static String _detectPlatform() {
    if (kIsWeb) return 'web';
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    return 'unknown';
  }

  bool get isWeb => _platform == 'web';
  bool get isAndroid => _platform == 'android';
  bool get isIOS => _platform == 'ios';
  String get platform => _platform;
}
