import 'package:dispatch/model/delivery_item.dart';
import 'package:dispatch/model/delivery_policy.dart';
import 'package:dispatch/model/slots_item.dart';
import 'package:service_package/service_package.dart';

class DeliveryResponse {
  static String url = '/dispatch/api/merchant';
  static String policyUrl =
      '/dispatch/api/merchant/${ServiceGlobal.instance.merchantId}/delivery/policy';
  static String slotsUrl =
      '/dispatch/api/merchant/${ServiceGlobal.instance.merchantId}/delivery/slots';

  static Future<DeliveryItem?> getDelivery(
      {required String to, required String from, String? merchant}) async {
    try {
      Map<String, dynamic> params = {
        'to': to,
        'from': from,
      };

      final res = await BaseDio.getInstance().get(
          url:
              '$url/${merchant ?? ServiceGlobal.instance.merchantId}/delivery/config',
          params: params);

      DeliveryItem deliveryItem = DeliveryItem.fromJson(res);
      return deliveryItem;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<DeliveryPolicy?>> getPolicy() async {
    try {
      final res = await BaseDio.getInstance().get(url: policyUrl);
      List<DeliveryPolicy?> deliverPolicy = [];
      for (var item in res) {
        deliverPolicy.add(DeliveryPolicy.fromJson(item));
      }
      return deliverPolicy;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<SlotsItem?>> getSlots() async {
    try {
      final res = await BaseDio.getInstance().get(url: slotsUrl);
      List<SlotsItem?> slotsItem = [];
      for (var item in res) {
        slotsItem.add(SlotsItem.fromJson(item));
      }
      return slotsItem;
    } catch (e) {
      rethrow;
    }
  }

  static Future updateStatus({
    required String order,
    required String status,
    String? riderNo,
    num? riderMid,
    String? desc,
  }) async {
    try {
      Map<String, dynamic> params = Map.from({
        "status": status,
        "riderNo": riderNo,
        "riderMid": riderMid,
        "desc": desc,
      }..removeWhere((key, value) => value == null));
      final res = await BaseDio.getInstance().post(
          url:
              '/dispatch/api/merchant/${ServiceGlobal.instance.merchantId}/order/$order/status',
          params: params);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
