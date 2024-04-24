import 'package:service_package/service_package.dart';

import '../../model/class_item.dart';
import '../macau_dio.dart';

class ClassResponse {
  static String classUrl = '/course/api/class/';

  static Future<List<ClassItem>> getClassList(
      {required int page, Map? sort, required Map query}) async {
    try {
      Map<String, dynamic> params = Map.from({
        'size': ServiceGlobal.instance.pageSize,
        'page': page,
        'sort': sort,
        'query': query
      })
        ..removeWhere((key, value) => value == null);
      List<ClassItem> list = [];
      List<dynamic> jsonLists =
          await MacauDio.getInstance().get(url: classUrl, params: params);
      for (var item in jsonLists) {
        list.add(ClassItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
