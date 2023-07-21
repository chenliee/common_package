import 'dart:io';

import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class VipRightResponse {
  static String payCardUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/vipRight/payCardCoupon';
  static String vipCardUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/vipRight';

  static Future payCardCoupon(
      {num? id, String? channel, String? redirectUrl}) async {
    try {
      Map<String, dynamic> params = {
        'id': id,
        'channel': channel,
        'platform': Platform.isAndroid ? 'android' : 'ios',
      };
      params['redirectUrl'] = redirectUrl;
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: payCardUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      return res['data'];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getVipCard({required num? vipCardId}) async {
    late VipCardRight vipCardRight;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$vipCardUrl/$vipCardId');
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      vipCardRight = VipCardRight.fromJson(res['data']);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return vipCardRight;
  }
}
