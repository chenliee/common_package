import 'package:crop/crop.dart';
import 'package:service_package/service_package.dart';

class BrandResponse {
  static String getBrandURL =
      '/crop/api/merchant/${ServiceGlobal.instance.merchantId}/brand';
  static String getPlaceURL =
      '/crop/api/merchant/${ServiceGlobal.instance.merchantId}/places';
  static String getPlaceInfoURL =
      '/crop/api/merchant/${ServiceGlobal.instance.merchantId}/place/';

  ///获取儒林旗下品牌
  static Future<List<BrandItem>> getBrandItem() async {
    List<BrandItem> brand = [];
    final res = await BaseDio.getInstance().get(url: getBrandURL);
    print('===>>>$res');
    for (var item in res) {
      try {
        brand.add(BrandItem.fromJson(item));
      } catch (err) {
        print('brand err===>>> $err');
      }
    }
    return brand;
  }

  ///获取品牌下分店
  static Future<List<PlaceItem>> getPlaceItem(
      {String? brand, String? xLocation}) async {
    List<PlaceItem> branch = [];
    Map<String, dynamic>? params = Map.from({
      "brand": brand,
    })
      ..removeWhere((key, value) => value == null);
    Map<String, dynamic>? data = Map.from({
      "x-location": xLocation,
    })
      ..removeWhere((key, value) => value == null);
    var res = await BaseDio.getInstance()
        .get(url: getPlaceURL, params: params, data: data);
    for (var item in res) {
      try {
        branch.add(PlaceItem.fromJson(item));
      } catch (err) {
        print('branch info err===>>> $err');
      }
    }
    return branch;
  }

  ///获取分店详情
  static Future<PlaceItem> getPlaceInfo(
      {String? brand, required String place}) async {
    PlaceItem placeItem;
    Map<String, dynamic> params = Map.from({"brand": brand})
      ..removeWhere((key, value) => value == null);
    final res = await BaseDio.getInstance()
        .get(url: "$getPlaceInfoURL$place", params: params);
    placeItem = PlaceItem.fromJson(res);
    return placeItem;
  }
}
