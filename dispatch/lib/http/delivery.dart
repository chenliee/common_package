import 'package:dispatch/model/delivery_item.dart';
import 'package:dispatch/model/delivery_policy.dart';
import 'package:dispatch/model/slots_item.dart';
import 'package:service_package/service_package.dart';

class DeliveryResponse {
  static String configUrl =
      '/dispatch/api/merchant/${ServiceGlobal.instance.merchantId}/delivery/config';
  static String policyUrl =
      '/dispatch/api/merchant/${ServiceGlobal.instance.merchantId}/delivery/policy';
  static String slotsUrl =
      '/dispatch/api/merchant/${ServiceGlobal.instance.merchantId}/delivery/slots';

  static Future<DeliveryItem?> getDelivery({
    required String to,
    required String from,
  }) async {
    try {
      Map<String, dynamic> params = {
        'to': to,
        'from': from,
      };
      final res =
          await BaseDio.getInstance().get(url: configUrl, params: params);
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
}
