// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/service_package.dart';

class SchoolYearResponse {
  static Future<List<SchoolYearItem>> getSchoolYearList(
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

      List<SchoolYearItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/tuition/api/school_year",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(SchoolYearItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
