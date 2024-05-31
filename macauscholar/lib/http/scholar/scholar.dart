import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/api', file: 'ScholarResponse', dio: 'MacauDio')
abstract class Class {
  @ApiGen(
    '/scholar/get_home_data',
    method: ApiGen.GET,
    target: 'HomeModel',
  )
  Future<HomeModel> getHomeData();

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
}