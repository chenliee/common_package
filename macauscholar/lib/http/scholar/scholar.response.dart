// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:macauscholar/macauscholar.dart';

class ScholarResponse {
  static Future<HomeModel> getHomeData() async {
    try {
      HomeModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/get_home_data",
      );
      item = HomeModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<WelfareModel> getWelfareData() async {
    try {
      WelfareModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/welfare/data",
      );
      item = WelfareModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<AdvertModel> getAdvert(
      {required String position,
      required String brand,
      String? xLocation}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "position": position,
        "brand": brand,
      })
        ..removeWhere((key, value) => value == null);

      Map<String, dynamic> data = Map.from({
        "x-location": xLocation,
      })
        ..removeWhere((key, value) => value == null);

      AdvertModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/place/advert/",
        params: params,
        data: data,
      );
      item = AdvertModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<ShopHomeModel> getShopHomeData() async {
    try {
      ShopHomeModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/shop/home/data",
      );
      item = ShopHomeModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TuitionModel> getTuitionData() async {
    try {
      TuitionModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/tuition/advert/data",
      );
      item = TuitionModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CourseModel> getCourseData() async {
    try {
      CourseModel? item;
      Map<String, dynamic> res = await ScholarDio.getInstance().get(
        url: "/api/scholar/course/data",
      );
      item = CourseModel.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
