import 'package:attendance/attendance.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:attendance/attendance.dart
@ApiGen('/attendance', file: 'RecordResponse', dio: 'BaseDio')
abstract class Record {
  @ApiGen(
    '/api/project/\$project/rule/\$rule/record/',
    params: {
      'filter': '@C_filter',
    },
    method: ApiGen.GET,
    target: 'RecordItem',
  )
  Future<List<RecordItem>> getRecordList(
      {Map? filter, required String project, required String rule});
}
