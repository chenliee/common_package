import 'package:crop/crop.dart';
import 'package:crop/models/mer_online.dart';
import 'package:service_package/service_package.dart';

/// package:service_package/service_package.dart
/// package:crop/crop.dart
/// package:crop/models/mer_online.dart
@ApiGen('/crop', file: 'BrandResponse')
abstract class BrandApi {
  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/brand',
    method: ApiGen.GET,
    target: 'BrandItem',
  )
  Future<List<BrandItem>> getBrandItem();

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/brand/\$code',
    method: ApiGen.GET,
    target: 'BrandItem',
  )
  Future<BrandItem> getBrandDetail({required String code});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/places',
    method: ApiGen.GET,
    params: {
      "brand": '@C_brand',
      "keyword": "@C_keyword",
      "place": "@C_place",
    },
    data: {
      "x-location": "@C_xLocation",
    },
    target: 'PlaceItem',
  )
  Future<List<PlaceItem>?> getPlaceItem(
      {List<String>? brand,
      List<String>? place,
      String? xLocation,
      String? keyword,
      String? merchant});

  @ApiGen(
    '/api/merchant/\${merchant ?? ServiceGlobal.instance.merchantId}/place/\$place',
    method: ApiGen.GET,
    params: {"brand": "@C_brand"},
    target: 'PlaceItem',
  )
  Future<PlaceItem> getPlaceInfo(
      {String? brand, required String place, String? merchant});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/brand/\$brand/key/\$key',
    method: ApiGen.PUT,
    params: {"value": "@C_value"},
    target: 'MerOnline',
  )
  Future<MerOnline> editMerOnline(
      {required String? brand, required String key, required String? value});
}
