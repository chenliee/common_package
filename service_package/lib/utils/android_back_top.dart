import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AndroidBackTop {
  static const String chanel = "service_package";

  static const String eventBackDesktop = "backDesktop";

  static Future<bool> backDesktop() async {
    const platform = MethodChannel(chanel);
    try {
      await platform.invokeMethod(eventBackDesktop);
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
    return Future.value(false);
  }
}
