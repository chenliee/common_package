import 'package:iam/iam.dart';
import 'package:service_package/service_package.dart';

/// package:service_package/service_package.dart
/// package:iam/iam.dart
/// package:iam/model/captcha_model.dart
/// package:iam/model/mer_login.dart
@ApiGen('/iam', file: 'MeResponse')
abstract class MeApi {
  @ApiGen(
    '/api/me/link',
    method: ApiGen.GET,
    target: 'LinkModel',
  )
  Future<List<LinkModel>> getMeLink();

  @ApiGen(
    '/api/me/link/\$provider/',
    method: ApiGen.POST,
    params: {
      "code": "@C_code",
    },
  )
  Future<dynamic> addLink({
    required String code,
    required String provider,
  });

  @ApiGen(
    '/api/me/link/\$provider/',
    method: ApiGen.DELETE,
  )
  Future<dynamic> deleteLink({
    required String provider,
  });
}
