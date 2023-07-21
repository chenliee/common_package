import 'package:marketing/marketing.dart';
import 'package:service_package/service_package.dart';

class ScoreResponse {
  static String scoreUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/score';
  static String scoreRecordUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/score/record';
  static String scoreSwapUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/score/swap';
  static String scoreListUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/score/list';
  static String scoreDesUrl =
      '/marketing/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/score/describe';

  static a() {}

  static Future getScore() async {
    Statistical? score;
    try {
      Map<String, dynamic> res = await BaseDio.getInstance().get(url: scoreUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return res['message'];
      }
      score = Statistical.fromJson(res['data']);
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return score;
  }

  static Future<dynamic> getScoreRecord() async {
    List<ScoreRecord> list = [];
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: scoreRecordUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
      for (dynamic item in jsonList) {
        list.add(ScoreRecord.fromJson(item));
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    return list;
  }

  static Future<dynamic> getScoreSwap() async {
    List<SwapRecord> list = [];
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: scoreSwapUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
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
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$scoreSwapUrl/$sid');
      if (res.containsKey('success') && !res['success']) {
        if (!ServiceGlobal.toastCustomize) {
          ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        }
        return;
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
    if (!ServiceGlobal.toastCustomize) {
      ToastInfo.toastInfo(msg: '兌換成功');
    }
    return true;
  }

  static Future<dynamic> getScoreList() async {
    List<ScoreItem> list = [];
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: scoreListUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonList = res['data'];
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
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
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
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      return res['data']['describe'];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
