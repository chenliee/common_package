import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class CouponResponse {
  static String receiveCouponUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/coupon/gain';
  static String userCouponUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/coupon/user';
  static String couponListUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/coupon';

  static Future receiveCoupon({required String cid}) async {
    try {
      Map<String, dynamic> res = await BaseDio.getInstance()
          .post(url: receiveCouponUrl, params: {'cid': cid});
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
      } else {
        ToastInfo.toastInfo(msg: '領取成功');
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future<List<UserCouponItem>> getUserCoupon(
      {List<Map>? items, int? status, required num page}) async {
    List<UserCouponItem> canList = [];
    List<UserCouponItem> notList = [];
    String usable = '';
    try {
      Map<String, dynamic> params = {
        'page': page,
        'pageSize': ServiceGlobal.pageSize,
      };
      if (ServiceGlobal.shopId.isNotEmpty) {
        params['shopId'] = ServiceGlobal.shopId;
      }
      if (status != null) {
        params['status'] = status;
      }
      if (items != null && items.isNotEmpty) {
        params['items'] = items;
      }
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: userCouponUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return [];
      }
      usable = res['data']['usable'];
      List<dynamic> a = res['data']['canList'];
      for (dynamic item in a) {
        item['valid'] = true;
        canList.add(UserCouponItem.fromJson(item));
      }
      List<dynamic> b = res['data']['notList'];
      for (Map<String, dynamic> item in b) {
        item['valid'] = false;
        notList.add(UserCouponItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
    return [...canList, ...notList];
  }

  static Future<List<CouponItem>> getCouponList(
      {bool? upCoupon = false, required num page}) async {
    List<CouponItem> list = [];
    try {
      Map<String, dynamic> params = {
        'upCoupon': upCoupon,
        'page': page,
        'pageSize': ServiceGlobal.pageSize
      };
      if (ServiceGlobal.shopId.isNotEmpty) {
        params['shopId'] = ServiceGlobal.shopId;
      }
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: couponListUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return [];
      }
      List<dynamic> a = res['data'];
      for (dynamic item in a) {
        list.add(CouponItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
    return list;
  }
}
