// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:macauscholar/macauscholar.dart';
import 'package:order/order.dart';
import 'package:service_package/service_package.dart';

class EnrollmentResponse {
  static Future<List<PackageItem>> getPackageList(
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

      List<PackageItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/tuition/api/package",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(PackageItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionEnrollmentItem> applyEnrollment(
      {required Map<String, dynamic> arg}) async {
    try {
      dynamic params = arg;

      TuitionEnrollmentItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/tuition/api/apply",
        params: params,
      );
      item = TuitionEnrollmentItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionEnrollmentItem> enrollmentDetail(
      {required String apply}) async {
    try {
      TuitionEnrollmentItem? item;
      Map<String, dynamic> res = await MacauDio.getInstance().get(
        url: "/tuition/api/apply/$apply",
      );
      item = TuitionEnrollmentItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<ServiceItem>> getServiceList(
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

      List<ServiceItem> list = [];
      List<dynamic> jsonLists = await MacauDio.getInstance().get(
        url: "/tuition/api/service",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(ServiceItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PayModel> payEnrollment(
      {List<Map<String, dynamic>>? adjs, required String pay}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "adjs": adjs,
      })
        ..removeWhere((key, value) => value == null);

      PayModel? item;
      Map<String, dynamic> res = await MacauDio.getInstance().post(
        url: "/tuition/api/apply/$pay/pay",
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
