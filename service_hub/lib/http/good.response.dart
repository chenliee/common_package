// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:service_hub/service_hub.dart';

class GoodResponse {
  static Future<List<GoodItem>?> getGoods(
      {List<dynamic>? uid,
      List<dynamic>? link,
      List<dynamic>? info,
      List<dynamic>? file,
      String? search,
      int? skip,
      int? size,
      int? cursor}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "uid": uid,
        "link": link,
        "info": info,
        "file": file,
        "search": search,
        "skip": skip,
        "size": size,
        "cursor": cursor,
      })
        ..removeWhere((key, value) => value == null);

      List<GoodItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url:
            "/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/good",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(GoodItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<GoodItem>?> getCategoryGoods(
      {required String category,
      dynamic condition,
      List<dynamic>? link,
      List<dynamic>? info,
      List<dynamic>? file,
      int? skip,
      int? size,
      String? search}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "condition": condition,
        "link": link,
        "info": info,
        "file": file,
        "search": search,
        "skip": skip,
        "size": size,
      })
        ..removeWhere((key, value) => value == null);

      List<GoodItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url:
            "/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/category/$category/goods",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(GoodItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<CategoryItem>?> getCategory(
      {List<dynamic>? info, List<dynamic>? file}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "info": info,
        "file": file,
      })
        ..removeWhere((key, value) => value == null);

      List<CategoryItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url:
            "/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/category",
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

  static Future<List<NewGoodItem>?> getNewGoods(
      {dynamic condition,
      List<dynamic>? link,
      List<dynamic>? info,
      List<dynamic>? file,
      required List<String?> category}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "info": info,
        "file": file,
        "condition": condition,
        "link": link,
        "category": category,
      })
        ..removeWhere((key, value) => value == null);

      List<NewGoodItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url:
            "/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/newGoods",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(NewGoodItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<GoodItem?> getGood(
      {required String id, Map<dynamic, dynamic>? condition}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "condition": condition,
      })
        ..removeWhere((key, value) => value == null);

      GoodItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url:
            "/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/good/$id",
        params: params,
      );
      item = GoodItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<GoodItem>?> getKeyGoods(
      {String? value,
      dynamic condition,
      required String key,
      List<dynamic>? link,
      List<dynamic>? info,
      List<dynamic>? file,
      int? skip,
      int? size}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "condition": condition,
        "link": link,
        "info": info,
        "file": file,
        "value": value,
        "key": key,
        "skip": skip,
        "size": size,
      })
        ..removeWhere((key, value) => value == null);

      List<GoodItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url:
            "/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/key/$key/goods",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(GoodItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<Attribute> getAttribute(
      {required String option, required String attribute}) async {
    try {
      Attribute? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url:
            "/service-hub/api/merchant/${ServiceGlobal.instance.merchantId}/attribute/$attribute/option/$option",
      );
      item = Attribute.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
