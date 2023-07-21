import 'package:marketing/model/survey_item.dart';
import 'package:service_package/service_package.dart';

import '../model/survey_list.dart';

class SurveyResponse {
  static String surveyListUrl = '/marketing/user/me/survey/list';
  static String surveyUrl = '/marketing/user/me/survey';

  static Future surveyList({required int page}) async {
    try {
      Map<String, dynamic> params = {
        'page': page,
        'pageSize': ServiceGlobal.pageSize,
      };
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: surveyListUrl, params: params);
      print(res);
      List<SurveyList> list = [];
      List<dynamic> jsonList = res['data'];
      for (var json in jsonList) {
        list.add(SurveyList.fromJson(json));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future surveyDetail({required String id}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$surveyUrl/$id');
      SurveyItem item = SurveyItem.fromJson(res['data']);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future submitSurvey(
      {required String id, required Map<String, dynamic> params}) async {
    try {
      bool isSuccess = false;
      Map<String, dynamic> res = await BaseDio.getInstance()
          .post(url: '$surveyUrl/$id', params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
      } else {
        isSuccess = true;
        ToastInfo.toastInfo(msg: '提交成功');
      }
      return isSuccess;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
