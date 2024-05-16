import 'package:service_package/service_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../flutter_notify.dart';

///手机推送
class PushRequest {
  static Future<void> deviceRegistration() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? accessToken = pref.getString('accessToken');
      Map<String, dynamic>? params = {
        'package': GlobalNotify.bundleId,
        'token': GlobalNotify.token,
      };
      final res = await PushDio.getInstance().post(
          url:
              '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/channel/${GlobalNotify.cid}/device-registration',
          params: params);
      GlobalNotify.uuid = res['uuid'];
      print("object$res");
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> deviceBinging(
      {required String cid, required String uuid, required String code}) async {
    Map<String, dynamic>? params = {
      'package': GlobalNotify.bundleId,
      'token': GlobalNotify.token,
      'uuid': uuid,
      'code': code,
    };
    final res = await PushDio.getInstance().post(
        url:
            '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/channel/$cid/device-binding',
        params: params);
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('sn', res['sn']);
    pref.setString('accessToken', res['deviceAccessToken']);
  }

  @Deprecated("弃用")
  static Future<void> update({required String cid}) async {
    await PushDio.getInstance().post(
        url:
            '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/channel/$cid/device/current/update',
        params: {});
  }

  static void getSn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    print(pref.getString('sn'));
    print(pref.getString('accessToken'));
    print(GlobalNotify.token);
  }
}
