// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:macauscholar/macauscholar.dart';
import 'package:order/model/pay_model.dart';
import 'package:service_package/service_package.dart';

class TuitionOrderResponse {
  static Future<List<TuitionOrderItem>> getOrderList(
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

      List<TuitionOrderItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/tuition/api/order/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(TuitionOrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionOrderItem> getOrderDetail({required String id}) async {
    try {
      TuitionOrderItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/tuition/api/order/$id",
      );
      item = TuitionOrderItem.fromJson(res);
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
        url: "/tuition/api/order/$orderCode/pay",
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
