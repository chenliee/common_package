import 'package:order/order.dart';
import 'package:service_package/service_package.dart';

class MemberOrderResponse {
  static String orderUrl =
      '/order/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/order';
  static String computedUrl =
      '/order/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/order/computed';
  static String createUrl =
      '/order/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/order/create';
  static String payUrl =
      '/order/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/order/pay';
  static String cancelUrl =
      '/order/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/order/cancel';
  static String completeUrl =
      '/order/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/complete';
  static String refundUrl =
      '/order/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/refund';

  static Future getDetailOrder({required String id}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$orderUrl/$id');
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      OrderItem item = OrderItem.fromJson(res['data']);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future getOrderList({required int page, String? orderStatus}) async {
    try {
      Map<String, dynamic> params = {
        "page": page,
        "pageSize": ServiceGlobal.pageSize,
        "orderBy": "desc",
      };
      if (orderStatus != null) {
        params["orderStatus"] = orderStatus;
      }
      List<OrderItem> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: orderUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (var item in jsonList) {
        list.add(OrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
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
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      return res['data'];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
    }
  }

  static Future<bool> cancelOrder(
      {required String orderId, required String cancelReason}) async {
    try {
      Map<String, dynamic> params = {
        "orderId": orderId,
        "cancelReason": cancelReason,
      };
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: cancelUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        ToastInfo.toastInfo(msg: '取消成功');
        return true;
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      return false;
    }
  }

  static Future<bool> completeOrder({required String orderId}) async {
    try {
      Map<String, dynamic> params = {"orderId": orderId};
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: completeUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        return true;
      }
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
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: refundUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        ToastInfo.toastInfo(msg: '申请成功');
        return true;
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      return false;
    }
  }
}
