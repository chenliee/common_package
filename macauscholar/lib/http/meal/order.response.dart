// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:macauscholar/macauscholar.dart';
import 'package:order/model/pay_model.dart';
import 'package:service_package/service_package.dart';

class MealOrderResponse {
  static Future<List<MealOrderItem>> getOrderList(
      {int? page,
      Map<dynamic, dynamic>? filter,
      int? size,
      String? keyword,
      bool disablePaging = false}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size,
        "page": page,
        "filter": filter,
        "keyword": keyword,
        "disablePaging": disablePaging,
      })
        ..removeWhere((key, value) => value == null);

      List<MealOrderItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/meal/api/order/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(MealOrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<OrderItem>> getOrderItem(
      {int? page,
      Map<dynamic, dynamic>? filter,
      int? size,
      String? keyword,
      bool? isDel}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size,
        "page": page,
        "filter": filter,
        "keyword": keyword,
        "isDel": isDel,
      })
        ..removeWhere((key, value) => value == null);

      List<OrderItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/meal/api/order/item/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(OrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<OrderItem> deleteOrderItem(
      {required num id, bool isDel = true, bool isTrueDel = false}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "isTrueDel": isTrueDel,
        "isDel": isDel,
      })
        ..removeWhere((key, value) => value == null);

      OrderItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().delete(
        url: "/meal/api/order/item/$id",
        params: params,
      );
      item = OrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<MealOrderItem> getOrderDetail({required String id}) async {
    try {
      MealOrderItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/meal/api/order/$id",
      );
      item = MealOrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> pay({required String orderCode}) async {
    try {
      Map<String, dynamic> params = Map.from({})
        ..removeWhere((key, value) => value == null);

      PayModel? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/meal/api/order/$orderCode/pay",
        params: params,
      );
      item = PayModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
