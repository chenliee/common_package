// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/model/course_order_item.dart';
import 'package:macauscholar/macauscholar.dart';

class CourseOrderResponse {
  static Future<List<CourseOrderItem>> getOrderList(
      {required int page,
      Map<dynamic, dynamic>? sort,
      Map<dynamic, dynamic>? filter,
      int? size,
      String? keyword}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size,
        "page": page,
        "sort": sort ?? {"createdAt": "desc"},
        "filter": filter,
        "keyword": keyword,
      })
        ..removeWhere((key, value) => value == null);

      List<CourseOrderItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/course/api/order/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(CourseOrderItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CourseOrderItem> getOrderItem({required String id}) async {
    try {
      CourseOrderItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/course/api/order/$id",
      );
      item = CourseOrderItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}