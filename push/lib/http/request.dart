import 'package:push/http/base_dio.dart';
import 'package:service_package/service_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../flutter_push.dart';

class PushRequest {
  static Future<void> deviceRegistration() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? accessToken = pref.getString('accessToken');
    if (accessToken == null) {
      Map<String, dynamic>? params = {
        'package': Push.bundleId,
        'token': Push.token,
      };
      final res = await PushDio.getInstance().post(
          url:
              '/notify/api/merchant/${ServiceGlobal.mid}/channel/${Push.cid}/device-registration',
          params: params);
      Push.uuid = res['uuid'];
    } else {
      update(cid: Push.cid);
    }
  }

  static Future<void> deviceBinging(
      {required String cid, required String uuid, required String code}) async {
    Map<String, dynamic>? params = {
      'package': Push.bundleId,
      'token': Push.token,
      'uuid': uuid,
      'code': code,
    };
    final res = await PushDio.getInstance().post(
        url:
            '/notify/api/merchant/${ServiceGlobal.mid}/channel/$cid/device-binding',
        params: params);
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('sn', res['sn']);
    pref.setString('accessToken', res['deviceAccessToken']);
  }

  static Future<void> update({required String cid}) async {
    await PushDio.getInstance().post(
        url:
            '/notify/api/merchant/${ServiceGlobal.mid}/channel/$cid/device/current/update',
        params: {});
  }
}
