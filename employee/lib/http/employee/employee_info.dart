import 'package:employee/model/employee_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:employee/http/hrms.dart
/// package:employee/model/employee_item.dart
@ApiGen('/api', file: 'EmployeeResponse', dio: 'HrmsDio')
abstract class Leave {
  @ApiGen(
    '/employee/\$id/',
    target: 'EmployeeItem',
    method: ApiGen.GET,
  )
  Future<EmployeeItem> employeeInfo({required String id});

}
