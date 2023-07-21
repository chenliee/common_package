import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:push/http/request.dart';

typedef EventHandlerMap = Future<dynamic> Function(Map<String, dynamic> event);

class Push {
  static Push? _instance;

  static String token = '';

  static String bundleId = '';
  static String cid = '';
  static String uuid = '';

  static EventHandlerMap? _pushClickAction;

  static String? hmsAppId = '';

  static const MethodChannel _channel = MethodChannel('push_plugin');

  static Push getInstance() {
    _instance ??= Push();
    return _instance!;
  }

  static Future<void> initDistributorId({
    required String bundleId,
    required String pushType,
    String? hmsAppId,
  }) async {
    Push.bundleId = bundleId;
    Push.cid = pushType;
    Push.hmsAppId = hmsAppId;
    Push.getInstance();
  }

  static Future<String> getToken() async {
    try {
      if (cid == 'hms') {
        token = await _channel.invokeMethod('getToken', {'appId': hmsAppId});
      } else {
        token = await _channel.invokeMethod('getToken');
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
  }) {
    _pushClickAction = pushClickAction;
    _channel.setMethodCallHandler(_handleMethod);
  }

  static Future<dynamic> _handleMethod(MethodCall call) async {
    switch (call.method) {
      case "pushClickAction":
        return _pushClickAction!({'key': 'product'});
      case "deviceBinging":
        return PushRequest.deviceBinging(
            cid: call.arguments['cid'],
            uuid: uuid,
            code: call.arguments['code']);
      default:
        throw UnsupportedError("Unrecognized Event");
    }
  }

  @Deprecated('无用')
  getPlatformVersion() {}
}
