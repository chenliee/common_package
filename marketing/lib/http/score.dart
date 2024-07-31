import 'package:marketing/marketing.dart';
import 'package:marketing/model/score_desc.dart';
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

  static Future<List<ScoreItem>> getScoreList(
      {int? page, int? pageSize}) async {
    List<ScoreItem> list = [];
    try {
      Map<String, dynamic> params = page == null
          ? {}
          : {
              'page': page,
              'pageSize': pageSize ?? ServiceGlobal.instance.pageSize,
            };
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: scoreListUrl, params: params);
      for (dynamic item in jsonList) {
        list.add(ScoreItem.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future<ScoreItem> getScoreItem({required num sid}) async {
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

  static Future<ScoreDesc?> getScoreDesc() async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: scoreDesUrl);
      ScoreDesc scoreDesc = ScoreDesc.fromJson(res);
      return scoreDesc;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future getCredit({required String uid}) async {
    String url = '/marketing/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/scoreRule/balance/$uid';
    try {
      Map<String, dynamic> res = await BaseDio.getInstance().get(url: url);
      return res;
    } catch (e) {
      throw Debug.printMsg(e, StackTrace.current);
    }
  }
}
