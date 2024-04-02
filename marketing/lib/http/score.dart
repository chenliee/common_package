import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class ScoreResponse {
  static String scoreUrl =
      '/marketing/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/score';
  static String scoreRecordUrl = '$scoreUrl/record';
  static String scoreSwapUrl = '$scoreUrl/swap';
  static String scoreListUrl = '$scoreUrl/list';
  static String scoreDesUrl = '$scoreUrl/describe';

  static Future getScore({bool isApi = true}) async {
    Statistical? score;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: scoreUrl, isApi: isApi);
      score = Statistical.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return score;
  }

  static Future<List<ScoreRecord>?> getScoreRecord({int? page}) async {
    try {
      Map<String, dynamic> params = page == null
          ? {}
          : {
              'page': page,
              'pageSize': ServiceGlobal.instance.pageSize,
            };
      List<ScoreRecord> list = [];
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: scoreRecordUrl, params: params);
      for (dynamic item in jsonList) {
        list.add(ScoreRecord.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<dynamic> getScoreSwap() async {
    List<SwapRecord> list = [];
    try {
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: scoreSwapUrl);
      for (dynamic item in jsonList) {
        list.add(SwapRecord.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future<dynamic> swapScore({required num sid}) async {
    try {
      await BaseDio.getInstance().get(url: '$scoreSwapUrl/$sid');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<dynamic> getScoreList() async {
    List<ScoreItem> list = [];
    try {
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: scoreListUrl);
      for (dynamic item in jsonList) {
        list.add(ScoreItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future<dynamic> getScoreItem({required num sid}) async {
    late ScoreItem scoreItem;
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$scoreUrl/$sid');
      scoreItem = ScoreItem.fromJson(res);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return scoreItem;
  }

  static Future<dynamic> getScoreDesc() async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: scoreDesUrl);
      return res['describe'];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
