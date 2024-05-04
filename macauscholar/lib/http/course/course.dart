import 'package:macauscholar1/model/course_item.dart';
import 'package:service_package/service_package.dart';

import '../macau_dio.dart';

class CourseResponse {
  static String courseUrl = '/course/api/course/';

  static Future<List<CourseItem>> getCourseList(
      {required int page, Map? sort, required Map query, int? size}) async {
    try {
      Map<String, dynamic> params = Map.from({
        'size': size ?? ServiceGlobal.instance.pageSize,
        'page': page,
        'sort': sort ?? {"createdAt": "desc"},
        'query': query
      })
        ..removeWhere((key, value) => value == null);
      List<CourseItem> list = [];
      List<dynamic> jsonLists =
          await MacauDio.getInstance().get(url: courseUrl, params: params);
      for (var item in jsonLists) {
        list.add(CourseItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
