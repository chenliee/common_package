// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:employee/http/hrms.dart';
import 'package:employee/model/employee_item.dart';

class EmployeeResponse {
  static Future<EmployeeItem> employeeInfo({required String id}) async {
    try {
      EmployeeItem? item;
      Map<String, dynamic> res = await HrmsDio.getInstance().get(
        url: "/api/employee/$id/",
      );
      item = EmployeeItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
