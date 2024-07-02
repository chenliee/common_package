import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/tuition', file: 'EnrollmentResponse', dio: 'MacauDio')
abstract class Enrollment {
  @ApiGen(
    '/api/package',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'disablePaging': '@C_disablePaging'
    },
    method: ApiGen.GET,
    target: 'PackageItem',
  )
  Future<List<PackageItem>> getPackageList(
      {int? page,
      Map? filter,
      int? size,
      String? keyword,
      bool disablePaging = false});

  @ApiGen(
    '/api/apply',
    params: '@C_arg',
    method: ApiGen.POST,
    target: 'TuitionEnrollmentItem',
  )
  Future<TuitionEnrollmentItem> applyEnrollment(
      {required Map<String, dynamic> arg});

  @ApiGen(
    '/api/service',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'disablePaging': '@C_disablePaging'
    },
    method: ApiGen.GET,
    target: 'ServiceItem',
  )
  Future<List<ServiceItem>> getServiceList(
      {int? page,
      Map? filter,
      int? size,
      String? keyword,
      bool disablePaging = false});
}
