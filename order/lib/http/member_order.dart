import 'package:order/order.dart';
import 'package:service_package/service_package.dart';

class MemberOrderResponse {
  static String orderUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/order';
  static String computedUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/order/computed';
  static String createUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/order/create';
  static String payUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/order/pay';
  static String cancelUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/order/cancel';
  static String completeUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/complete';
  static String refundUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/refund';

  static Future getDetailOrder({required String id}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$orderUrl/$id');
      OrderItem item = OrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getOrderList({required int page, String? orderStatus}) async {
    try {
      Map<String, dynamic> params = {
        "page": page,
        "pageSize": ServiceGlobal.instance.pageSize,
        "orderBy": "desc",
      };
      if (orderStatus != null) {
        params["orderStatus"] = orderStatus;
      }
      List<OrderItem> list = [];
      List<dynamic> jsonList = await BaseDio.getInstance().get(url: orderUrl, params: params);
      for (var item in jsonList) {
        list.add(OrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future computedOrder() async {}

  static Future createOrder() async {}

  static Future payOrder({required String orderId, String? redirectUrl}) async {
    try {
      Map<String, dynamic> params = {
        "orderId": orderId,
      };
      if (redirectUrl != null) {
        params['redirectUrl'] = redirectUrl;
      }
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: payUrl, params: params);
      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<bool> cancelOrder(
      {required String orderId, required String cancelReason}) async {
    try {
      Map<String, dynamic> params = {
        "orderId": orderId,
        "cancelReason": cancelReason,
      };
      await BaseDio.getInstance().post(url: cancelUrl, params: params);
      ToastInfo.toastInfo(msg: '取消成功');
        return true;

    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      return false;
    }
  }

  static Future<bool> completeOrder({required String orderId}) async {
    try {
      Map<String, dynamic> params = {"orderId": orderId};
      await BaseDio.getInstance().post(url: completeUrl, params: params);
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      return false;
    }
  }

  static Future<bool> refundOrder(
      {required String orderId, required String cancelReason}) async {
    try {
      Map<String, dynamic> params = {
        "orderId": orderId,
        "cancelReason": cancelReason
      };
     await BaseDio.getInstance().post(url: refundUrl, params: params);
      ToastInfo.toastInfo(msg: '申请成功');
      return true;

    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      return false;
    }
  }
}
