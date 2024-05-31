import 'package:crop/crop.dart';
import 'package:service_package/service_package.dart';

/// package:service_package/service_package.dart
/// package:crop/crop.dart
@ApiGen('/crop', file: 'BrandResponse')
abstract class BrandApi {
  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/brand',
    method: ApiGen.GET,
    target: 'BrandItem',
  )
  Future<List<BrandItem>> getBrandItem();

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/places',
    method: ApiGen.GET,
    params: {
      "brand": '@C_brand',
      "keyword": "@C_keyword",
    },
    data: {
      "x-location": "@C_xLocation",
    },
    target: 'PlaceItem',
  )
  Future<List<PlaceItem>?> getPlaceItem(
      {List<String>? brand, String? xLocation, String? keyword});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/place/\$place',
    method: ApiGen.GET,
    params: {"brand": "@C_brand"},
    target: 'PlaceItem',
  )
  Future<PlaceItem> getPlaceInfo({String? brand, required String place});
}
