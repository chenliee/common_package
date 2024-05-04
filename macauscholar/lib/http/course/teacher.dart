import 'package:macauscholar1/model/teacher_item.dart';
import 'package:service_package/service_package.dart';

import '../macau_dio.dart';

class TeacherResponse {
  static String teacherUrl = '/course/api/teacher/';

  static Future<List<TeacherItem>> getTeacherList(
      {required int page, Map? sort, required Map query, int? size}) async {
    try {
      Map<String, dynamic> params = Map.from({
        'size': size ?? ServiceGlobal.instance.pageSize,
        'page': page,
        'sort': sort ?? {"createdAt": "desc"},
        'query': query
      })
        ..removeWhere((key, value) => value == null);
      List<TeacherItem> list = [];
      List<dynamic> jsonLists =
          await MacauDio.getInstance().get(url: teacherUrl, params: params);
      for (var item in jsonLists) {
        list.add(TeacherItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
