// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:crop/crop.dart';
import 'package:crop/models/mer_online.dart';
import 'package:service_package/service_package.dart';

class BrandResponse {
  static Future<List<BrandItem>> getBrandItem() async {
    try {
      List<BrandItem> list = [];
      List<dynamic> jsonLists = await BaseDio.getInstance().get(
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

  static Future<BrandItem> getBrandDetail({required String code}) async {
    try {
      BrandItem? item;
      Map<String, dynamic> res = await BaseDio.getInstance().get(
        url:
            "/crop/api/merchant/${ServiceGlobal.instance.merchantId}/brand/$code",
      );
      item = BrandItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<PlaceItem>?> getPlaceItem(
      {List<String>? brand, String? xLocation, String? keyword}) async {
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

  static Future<MerOnline> editMerOnline(
      {required String? brand,
      required String key,
      required String? value}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "value": value,
      })
        ..removeWhere((key, value) => value == null);

      MerOnline? item;
      Map<String, dynamic> res = await BaseDio.getInstance().put(
        url:
            "/crop/api/merchant/${ServiceGlobal.instance.merchantId}/brand/$brand/key/$key",
        params: params,
      );
      item = MerOnline.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
