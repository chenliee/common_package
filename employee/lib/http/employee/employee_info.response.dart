// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:employee/http/hrms.dart';
import 'package:employee/model/employee_item.dart';

class EmployeeResponse {
  static Future<List<EmployeeItem>> employeeInfo(
      {String? page, String? size, Map<dynamic, dynamic>? filter}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "page": page,
        "size": size,
        "filter": filter,
      })
        ..removeWhere((key, value) => value == null);

      List<EmployeeItem> list = [];
      List<dynamic> jsonLists = await HrmsDio.getInstance().get(
        url: "/api/employee/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(EmployeeItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
