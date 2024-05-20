import 'package:bestlife_retail/model/link_model.dart';
import 'package:service_package/service_package.dart';

/// package:service_package/service_package.dart
/// package:bestlife_retail/bestlife_retail.dart
@ApiGen('/api', file: 'GoodyActivityResponse', dio: 'GoodyDio')
abstract class GoodyActivityApi {
  @ApiGen('/activity/share_link/\$initCode/\$helpCode',
      method: ApiGen.GET, target: 'LinkModel')
  Future<LinkModel> getActivityLink(
      {required String helpCode, required String initCode});
}
