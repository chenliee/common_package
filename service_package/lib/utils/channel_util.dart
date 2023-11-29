import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChannelUtil {
  final methodChannel = const MethodChannel('service_package');

  static const String eventBackDesktop = "backDesktop";

  Future<bool> backDesktop() async {
    try {
      await methodChannel.invokeMethod(eventBackDesktop);
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
    return Future.value(false);
  }

  Future<String?> getIdentifier() async {
    final id = await methodChannel.invokeMethod<String>('getIdentifier');
    return id;
  }
}
