import 'package:employee/model/employee_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:employee/http/hrms.dart
/// package:employee/model/employee_item.dart
@ApiGen('/api', file: 'EmployeeResponse', dio: 'HrmsDio')
abstract class Leave {
  @ApiGen(
    '/employee/',
    params: {
      "page": '@C_page',
      "size": "@C_size",
      "filter": "@C_filter",
    },
    target: 'EmployeeItem',
    method: ApiGen.GET,
  )
  Future<List<EmployeeItem>> employeeInfo({String? page, String? size, Map? filter});
}
