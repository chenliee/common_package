import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../http/push.dart';

typedef EventHandlerMap = Future<dynamic> Function(Map<String, dynamic> event);

class GlobalNotify {
  static GlobalNotify? _instance;

  static String token = '';

  static String bundleId = '';
  static String cid = '';
  static String uuid = '';

  static EventHandlerMap? _pushClickAction;
  static EventHandlerMap? _onRegisteredDone;

  static String? hmsAppId = '';

  static const MethodChannel _channel = MethodChannel('push_plugin');

  static GlobalNotify getInstance() {
    _instance ??= GlobalNotify();
    return _instance!;
  }

  static Future<void> initDistributorId({
    required String bundleId,
    required String pushType,
    String? hmsAppId,
  }) async {
    GlobalNotify.bundleId = bundleId;
    GlobalNotify.cid = pushType;
    GlobalNotify.hmsAppId = hmsAppId;
    GlobalNotify.getInstance();
  }

  static Future<String> getToken() async {
    try {
      if (cid == 'hms') {
        token = await _channel.invokeMethod('getToken', {'appId': hmsAppId});
      } else {
        token = await _channel.invokeMethod('getToken');
        log(token);
      }
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("Failed to get token: '${e.message}'.");
      }
    } catch (error) {
      if (kDebugMode) {
        print('error:$error');
      }
    }
    return token;
  }

  static void addEventHandler({
    EventHandlerMap? pushClickAction,
    EventHandlerMap? onRegisteredDone,
  }) {
    _pushClickAction = pushClickAction;
    _onRegisteredDone = onRegisteredDone;
    _channel.setMethodCallHandler(_handleMethod);
  }

  static Future<dynamic> _handleMethod(MethodCall call) async {
    switch (call.method) {
      case "pushClickAction":
        return _pushClickAction!(call.arguments.cast<String, dynamic>());
      case "onRegisteredDone":
        return _onRegisteredDone!(call.arguments.cast<String, dynamic>());
      case "deviceBinging":
        return Future.delayed(Duration(milliseconds: 500)).then((value) {
          PushRequest.deviceBinging(
              cid: call.arguments['cid'],
              uuid: uuid,
              code: call.arguments['code']);
        });
      default:
        throw UnsupportedError("Unrecognized Event");
    }
  }

  @Deprecated('无用')
  getPlatformVersion() {}
}
