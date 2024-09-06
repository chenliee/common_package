import 'package:attendance/attendance.dart';
import 'package:attendance/model/record_add_item.dart';
import 'package:attendance/model/rule_item.dart';
import 'package:attendance/model/update_recoed.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:attendance/attendance.dart
/// package:attendance/model/record_add_item.dart
/// package:attendance/model/update_recoed.dart
/// package:attendance/model/rule_item.dart
@ApiGen('/attendance', file: 'RecordResponse', dio: 'BaseDio')
abstract class Record {
  @ApiGen(
    '/api/project/\$project/rule/\$rule/punch_log/member',
    method: ApiGen.POST,
    target: 'PunchLogItem',
  )
  Future<PunchLogItem> punchLogMember({required String project, required String rule});

  @ApiGen(
    '/api/project/\$project/rule/\$rule/record/',
    params: {
      'filter': '@C_filter',
    },
    method: ApiGen.GET,
    target: 'RecordItem',
  )
  Future<List<RecordItem>> getRecordList({Map? filter, required String project, required String rule});

  @ApiGen(
    '/api/project/\$project/rule/\$rule/record',
    params: {
      'uid': '@C_uid',
      'leave': '@C_leave',
      'from': '@C_from',
      'to': '@C_to',
    },
    method: ApiGen.POST,
    target: 'RecordAddItem',
  )
  Future<RecordAddItem> addRecord({
    required String project,
    required String rule,
    required String uid,
    required String leave,
    required num from,
    required num to,
  });

  @ApiGen(
    '/api/project/\$project/record/\$record',
    params: {
      'leave': '@C_leave',
      'ext': '@C_ext',
    },
    method: ApiGen.PUT,
    target: 'UpdateRecoed',
  )
  Future<UpdateRecoed> updateRecord({
    required String project,
    required String record,
    required String leave,
    Map? ext,
  });

  @ApiGen(
    '/api/project/\$project/rule/\$rule/',
    method: ApiGen.GET,
    target: 'RuleItem',
  )
  Future<RuleItem> getRule({
    required String project,
    required String rule,
  });


  @ApiGen(
    '/api/project/\$project/record/',
    params: {
      'filter': '@C_filter',
    },
    method: ApiGen.GET,
    target: 'RecordItem',
  )
  Future<List<RecordItem>> ProjectRecordList({Map? filter, required String project});
}
