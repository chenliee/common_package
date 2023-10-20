import 'package:push/http/base_dio.dart';
import 'package:service_package/service_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../flutter_notify.dart';

class PushRequest {
  static Future<void> deviceRegistration() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? accessToken = pref.getString('accessToken');
    if (accessToken == null) {
      Map<String, dynamic>? params = {
        'package': Notify.bundleId,
        'token': Notify.token,
      };
      final res = await PushDio.getInstance().post(
          url:
              '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/channel/${Notify.cid}/device-registration',
          params: params);
      Notify.uuid = res['uuid'];
    } else {
      update(cid: Notify.cid);
    }
  }

  static Future<void> deviceBinging(
      {required String cid, required String uuid, required String code}) async {
    Map<String, dynamic>? params = {
      'package': Notify.bundleId,
      'token': Notify.token,
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

  static Future<void> update({required String cid}) async {
    await PushDio.getInstance().post(
        url:
            '/notify/api/merchant/${ServiceGlobal.instance.merchantId}/channel/$cid/device/current/update',
        params: {});
  }
}
