import 'package:macauscholar/macauscholar.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
@ApiGen('/tuition', file: 'SchoolResponse', dio: 'MacauDio')
abstract class School {
  @ApiGen(
    '/api/school',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'disablePaging': '@C_disablePaging'
    },
    method: ApiGen.GET,
    target: 'SchoolItem',
  )
  Future<List<SchoolItem>> getSchoolList(
      {int? page,
      Map? filter,
      int? size,
      String? keyword,
      bool disablePaging = false});
}
