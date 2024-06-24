import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/course', file: 'ClassResponse', dio: 'MacauDio')
abstract class Class {
  @ApiGen(
    '/api/class',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'sort': '@C_sort ?? {"createdAt": "desc"}',
      'filter': '@C_filter',
      'keyword': '@C_keyword'
    },
    method: ApiGen.GET,
    target: 'ClassItem',
  )
  Future<List<ClassItem>> getClassList(
      {required int page, Map? sort, Map? filter, int? size, String? keyword});

  @ApiGen(
    '/api/class/\$classId/enrollment',
    params: {
      'scholar': '@C_scholar',
      'remark': '@C_remark',
    },
    method: ApiGen.POST,
    target: 'EnrollmentItem',
  )
  Future<EnrollmentItem> addEnrollmentItem({
    required String scholar,
    required String classId,
    String? remark,
  });
}
