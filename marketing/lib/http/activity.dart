import 'package:marketing/model/activity_item.dart';
import 'package:service_package/service_package.dart';

class ActivityResponse {
  static String activityListUrl =
      '/marketing2/api/merchant/${ServiceGlobal.instance.merchantId}/activity';

  static Future<List<ActivityItem>?> getActivityList({
    required num page,
    required num size,
    String? status,
    String? type,
    Map? custom,
  }) async {
    try {
      List<ActivityItem> list = [];
      Map<String, dynamic> params = Map.from({
        'page': page,
        'size': size,
        'status': status,
        'type': type,
        'custom': custom,
      }..removeWhere((key, value) => value == null));
      Map res =
          await BaseDio.getInstance().get(url: activityListUrl, params: params);
      List jsonList = res['list'];
      for (dynamic item in jsonList) {
        list.add(ActivityItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
