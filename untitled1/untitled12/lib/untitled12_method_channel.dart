import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'untitled12_platform_interface.dart';

/// An implementation of [Untitled12Platform] that uses method channels.
class MethodChannelUntitled12 extends Untitled12Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('untitled12');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
