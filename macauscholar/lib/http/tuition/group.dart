import 'package:macauscholar/model/tuition_group_detail.dart';
import 'package:macauscholar/model/tuition_group_item.dart';
import 'package:service_package/api/api_gen.dart';

/// package:service_package/service_package.dart
/// package:macauscholar/macauscholar.dart
/// package:macauscholar/model/tuition_group_detail.dart
/// package:macauscholar/model/tuition_group_item.dart
@ApiGen('/tuition', file: 'TuitionGroupResponse', dio: 'MacauDio')
abstract class Group {
  @ApiGen(
    '/api/group/',
    params: {
      'size': '@C_size',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'disablePaging': '@C_disablePaging'
    },
    method: ApiGen.GET,
    target: 'TuitionGroupItem',
  )
  Future<List<TuitionGroupItem>> getGroupList(
      {int? page, Map? filter, int? size, String? keyword, bool disablePaging = false});

  @ApiGen(
    '/api/group/\$id/',
    method: ApiGen.GET,
    target: 'TuitionGroupDetail',
  )
  Future<TuitionGroupDetail> getGroupDetail({required num id});

  @ApiGen(
    '/api/group/',
    params: {
      'description': '@C_description',
      'branch': '@C_branch',
      'user': '@C_user',
      'userId': '@C_userId',
      'name': '@C_name'
    },
    method: ApiGen.POST,
    target: 'TuitionGroupItem',
  )
  Future<TuitionGroupItem> addGroup(
      {String? description, required String branch, String? user, int? userId, required String name});
}
