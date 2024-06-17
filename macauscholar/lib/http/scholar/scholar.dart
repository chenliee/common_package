import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/api', file: 'ScholarResponse', dio: 'ScholarDio')
abstract class Class {
  @ApiGen(
    '/scholar/get_home_data',
    method: ApiGen.GET,
    target: 'HomeModel',
  )
  Future<HomeModel> getHomeData();

  @ApiGen(
    '/scholar/welfare/data',
    method: ApiGen.GET,
    target: 'WelfareModel',
  )
  Future<WelfareModel> getWelfareData();

  @ApiGen('/scholar/place/advert/',
      method: ApiGen.GET,
      target: 'AdvertModel',
      params: {
        'position': '@C_position',
        'brand': '@C_brand',
      },
      data: {
        'x-location': '@C_xLocation'
      })
  Future<AdvertModel> getAdvert(
      {required String position, required String brand, String? xLocation});

  @ApiGen(
    '/scholar/shop/home/data',
    method: ApiGen.GET,
    target: 'ShopHomeModel',
  )
  Future<ShopHomeModel> getShopHomeData();

  @ApiGen(
    '/scholar/tuition/advert/data',
    method: ApiGen.GET,
    target: 'TuitionModel',
  )
  Future<TuitionModel> getTuitionData();
}
