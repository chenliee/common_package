import 'package:article/http/merchant_dio.dart';
import 'package:order/model/compute_order.dart';
import 'package:service_package/service_package.dart';

import '../model/order_count.dart';
import '../model/order_item.dart';
import '../model/pay_model.dart';

class OrderResponse {
  static final String _baseUrl =
      '/order/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/order';
  static String computedUrl = '$_baseUrl/computed';
  static String createUrl = '$_baseUrl/create';
  static String createMerchantUrl =
      '/order/api/merchant/${ServiceGlobal.instance.merchantId}/order/create';
  static String orderMerchantUrl =
      '/order/api/merchant/${ServiceGlobal.instance.merchantId}/order';
  static String payUrl = '$_baseUrl/pay';
  static String cancelUrl = '$_baseUrl/cancel';
  static String completeUrl = '$_baseUrl/complete';
  static String refundUrl = '$_baseUrl/refund';
  static String countUrl = '$_baseUrl/count';

  static Future getOrderCount({List<String>? fields, bool isApi = true}) async {
    try {
      Map<String, dynamic> params = Map.from(
          {'fields': fields}..removeWhere((key, value) => value == null));
      List jsonList = await BaseDio.getInstance()
          .get(url: countUrl, params: params, isApi: isApi);
      List<OrderCount> orderCount = [];
      for (var item in jsonList) {
        orderCount.add(OrderCount.fromJson(item));
      }
      return orderCount;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getDetailOrder({required String id}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$_baseUrl/$id');
      OrderItem item = OrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<OrderItem> getDetailOrderMerchant({required String id}) async {
    try {
      Map<String, dynamic> res =
          await MerchantDio.getInstance().get(url: '$orderMerchantUrl/$id');
      OrderItem item = OrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<OrderItem>> getOrderList({
    int? page,
    String? orderStatus,
    String? linkService,
    String? linkStatus,
    String? extra,
    String? orderType,
    String? receiverInfo,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        "orderBy": "desc",
        'orderStatus': orderStatus,
        'linkService': linkService,
        'linkStatus': linkStatus,
        'extra': extra,
        'orderType': orderType,
        'receiverInfo': receiverInfo,
      }..removeWhere((key, value) => value == null));
      if (page != null) {
        params['page'] = page;
        params['pageSize'] = ServiceGlobal.instance.pageSize;
      }
      List<OrderItem> list = [];
      Map<String, dynamic> map =
          await BaseDio.getInstance().get(url: _baseUrl, params: params);
      List jsonList = map['list'];
      for (var item in jsonList) {
        list.add(OrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future computedOrder({
    required List goods,
    required String place,
    required Map condition,
    required List adjs,
    String? memberCard,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        "goods": goods,
        "priceKey": "sell_price",
        "instockKey": "instock",
        "singleLimitKey": "single_limit",
        "place": 'saas-cropinfo:$place',
        "memberCard": memberCard,
        "condition": condition,
        "adjs": adjs
      })
        ..removeWhere((key, value) => value == null);
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: computedUrl, params: params);
      ComputeOrder item = ComputeOrder.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future createOrder(
      {required List goods,
      required String place,
      required List adjs,
      required bool isShop,
      required Map condition,
      required Map receiverInfo,
      required Map branch,
      String? memberCard,
      String? remark}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "goods": goods,
        "priceKey": "sell_price",
        "instockKey": "instock",
        "singleLimitKey": "single_limit",
        "memberCard": memberCard,
        "place": 'saas-cropinfo:$place',
        "condition": condition,
        "adjs": adjs,
        "shopId": place,
        "orderType": !isShop ? 'TAKE_OUT' : "SHOP",
        "branch": branch,
        "receiverInfo": receiverInfo,
        "remark": remark
      }..removeWhere((key, value) => value == null));
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: createUrl, params: params);
      OrderItem item = OrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future createOrderMerchant(
      {required List goods,
      required String place,
      required List adjs,
      required bool isShop,
      required Map condition,
      required Map receiverInfo,
      required Map branch,
      String? remark,
      String? uid,
      String? orderId}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "orderId": orderId,
        "goods": goods,
        "uid": uid,
        "priceKey": "sell_price",
        "singleLimitKey": "single_limit",
        "adjs": adjs,
        "shopId": place,
        "orderType": !isShop ? 'TAKE_OUT' : "SHOP",
        "receiverInfo": receiverInfo,
        "remark": remark,
        "pid": ServiceGlobal.instance.projectId,
      }..removeWhere((key, value) => value == null));
      Map<String, dynamic> res = await MerchantDio.getInstance()
          .post(url: createMerchantUrl, params: params);
      OrderItem item = OrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> payOrder(
      {required String orderId, String? redirectUrl}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "orderId": orderId,
        'redirectUrl': redirectUrl,
      }..removeWhere((key, value) => value == null));
      PayModel? payModel;
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: payUrl, params: params);
      payModel = PayModel.fromJson(res);
      return payModel;
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
      {required String orderId,
      required String cancelReason,
      required List orderItems}) async {
    try {
      Map<String, dynamic> params = {
        "orderId": orderId,
        "cancelReason": cancelReason,
        "orderItems": orderItems
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
