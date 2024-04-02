import 'package:gold/model/score_item.dart';
import 'package:service_package/service_package.dart';

class GoldScoreResponse {
  static String scoreUrl =
      '/gold/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/score/target';

  static Future<List<ScoreItem>> getScore(
      {required String targetType, required String id}) async {
    try {
      List<ScoreItem> list = [];
      List<dynamic> jsonLists =
          await BaseDio.getInstance().get(url: '$scoreUrl/$targetType/$id');
      for (var item in jsonLists) {
        list.add(ScoreItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static String getSalesString(List<ScoreItem?> data) {
    ScoreItem? saleItem = data
        .cast<ScoreItem?>()
        .firstWhere((item) => item?.code == 'sale', orElse: () => null);
    return saleItem != null
        ? '${saleItem.title ?? '月銷量'}：${saleItem.value ?? 0}'
        : '月銷量：0';
  }
}
