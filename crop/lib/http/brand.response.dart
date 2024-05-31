// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:crop/crop.dart';
import 'package:service_package/service_package.dart';

class BrandResponse {
  static Future<List<BrandItem>> getBrandItem() async {
    try {
      List<BrandItem> list = [];
      var jsonLists = await BaseDio.getInstance().get(
        url: "/crop/api/merchant/${ServiceGlobal.instance.merchantId}/brand",
      );
      for (var item in jsonLists) {
        list.add(BrandItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<PlaceItem>?> getPlaceItem(
      {List? brand, String? xLocation, String? keyword}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "brand": brand,
        "keyword": keyword,
      })
        ..removeWhere((key, value) => value == null);

      Map<String, dynamic> data = Map.from({
        "x-location": xLocation,
      })
        ..removeWhere((key, value) => value == null);

      List<PlaceItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
        url: "/crop/api/merchant/${ServiceGlobal.instance.merchantId}/places",
        params: params,
        data: data,
      );
      for (var item in jsonLists) {
        list.add(PlaceItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<PlaceItem> getPlaceInfo(
      {String? brand, required String place}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "brand": brand,
      })
        ..removeWhere((key, value) => value == null);

      PlaceItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url:
            "/crop/api/merchant/${ServiceGlobal.instance.merchantId}/place/$place",
        params: params,
      );
      item = PlaceItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
