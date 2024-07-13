// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';

class CategoryResponse {
  static Future<List<CategoryItem>> getCategoryList(
      {Map<dynamic, dynamic>? sort,
      Map<dynamic, dynamic>? filter,
      String? keyword}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "sort": sort ?? {"createdAt": "desc"},
        "filter": filter,
        "keyword": keyword,
      })
        ..removeWhere((key, value) => value == null);

      List<CategoryItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/course/api/category",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(CategoryItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
