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
      bool isSuccess = false;
      Map<String, dynamic> res = await BaseDio.getInstance()
          .post(url: receiveCouponUrl, params: {'cid': cid});
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
      } else {
        isSuccess = true;
        ToastInfo.toastInfo(msg: '領取成功');
      }
      return isSuccess;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<UserCouponItem>> getUserCoupon(
      {List<Map>? items, int? status, num? page}) async {
    List<UserCouponItem> canList = [];
    List<UserCouponItem> notList = [];
    String usable = '';
    try {
      Map<String, dynamic> params = {};
      if (page != null) {
        params = {
          'page': page,
          'pageSize': ServiceGlobal.pageSize,
        };
      }
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
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return [];
      }
      usable = res['data']['list']['usable'];
      List<dynamic> a = res['data']['list']['canList'];

      for (dynamic item in a) {
        item['valid'] = true;
        canList.add(UserCouponItem.fromJson(item));
      }
      List<dynamic> b = res['data']['list']['notList'];
      for (Map<String, dynamic> item in b) {
        item['valid'] = false;
        notList.add(UserCouponItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
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
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return [];
      }
      List<dynamic> a = res['data'];
      for (dynamic item in a) {
        list.add(CouponItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }
}
