import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IdentifierUtil {
  static const String chanel = "service_package";

  static const String eventBackDesktop = "deviceIdentifier";

  static Future<String?> getIdentifier() async {
    String? id;
    const platform = MethodChannel(chanel);
    try {
      id = await platform.invokeMethod(eventBackDesktop);
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
    return id;
  }
}
