import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class CouponResponse {
  static String baseUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}';
  static String receiveCouponUrl = '$baseUrl/coupon/gain';
  static String userCouponUrl = '$baseUrl/coupon/user';
  static String couponListUrl = '$baseUrl/coupon';

  static Future receiveCoupon({required String cid}) async {
    try {
      await BaseDio.getInstance()
          .post(url: receiveCouponUrl, params: {'cid': cid});
      ToastInfo.toastInfo(msg: '領取成功');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List> getUserCoupon(
      {List<Map>? items, int? status, num? page, String? shopId}) async {
    List<UserCouponItem> canList = [];
    List<UserCouponItem> notList = [];
    String usable = '';
    try {
      Map<String, dynamic> params = Map.from({
        'shopId': shopId,
        'status': status,
        'items': items
      }..removeWhere((key, value) => value == null));

      Map<String, dynamic> res = await BaseDio.getInstance().post(
          url: '$userCouponUrl'
              '${page == null ? '' : '?page=$page&pageSize=${ServiceGlobal.instance.pageSize}'}',
          params: params);
      usable = res['list']['usable'];
      List<dynamic> a = res['list']['canList'];
      for (dynamic item in a) {
        item['valid'] = true;
        canList.add(UserCouponItem.fromJson(item));
      }
      List<dynamic> b = res['list']['notList'];
      for (Map<String, dynamic> item in b) {
        item['valid'] = false;
        notList.add(UserCouponItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return [canList, notList, usable];
  }

  static Future<List<CouponItem>> getCouponList(
      {bool? upCoupon, required num page}) async {
    List<CouponItem> list = [];
    try {
      Map<String, dynamic> params = Map.from(
          {'upCoupon': upCoupon}..removeWhere((key, value) => value == null));
      if (ServiceGlobal.instance.shopId.isNotEmpty) {
        params['shopId'] = ServiceGlobal.instance.shopId;
      }
      Map res = await BaseDio.getInstance().post(
          url:
              '$couponListUrl/?page=$page&pageSize=${ServiceGlobal.instance.pageSize}',
          params: params);
      List jsonList = res['list'];
      for (dynamic item in jsonList) {
        list.add(CouponItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }
}
