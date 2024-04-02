import 'package:service_package/service_package.dart';

import '../member.dart';

class UserResponse {
  static String baseUrl =
      '/member/app/merchant/${ServiceGlobal.instance.merchantId}';
  static String userUrl = '$baseUrl/user';
  static String vipInfoUrl =
      '$baseUrl/project/${ServiceGlobal.instance.projectId}/user/vipInfo';
  static String gradeInfoUrl =
      '$baseUrl/project/${ServiceGlobal.instance.projectId}/user/gradeInfo';
  static String vipBuyUrl =
      '$baseUrl/project/${ServiceGlobal.instance.projectId}/vipcard/buy';
  static String vipListUrl =
      '$baseUrl/project/${ServiceGlobal.instance.projectId}/vipcard';
  static String gradeListUrl =
      '$baseUrl/project/${ServiceGlobal.instance.projectId}/grade';
  static String uploadUrl =
      '/member/api/merchant/${ServiceGlobal.instance.merchantId}/upload/';

  // 獲取用戶信息
  static Future getUserinfo() async {
    try {
      Map<String, dynamic> res = await BaseDio.getInstance().get(url: userUrl);
      UserInfo? userInfo = UserInfo.fromJson(res);
      return userInfo;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 完善用戶信息
  static Future editUserinfo({
    required Map<String, dynamic> params,
  }) async {
    try {
      params['pid'] = ServiceGlobal.instance.projectId;
      /*  Map<String, dynamic> params = {
        "username": userName,
        "mobile": mobile,
        "sex": sex,
        "avatar": avatar,
        "email": email,
        "birthday": birthday,
        "habbit": habbit,
        "pid": ServiceGlobal.instance.projectId
      };*/
      Map<String, dynamic> res =
          await BaseDio.getInstance().put(url: userUrl, params: params);

      UserInfo? userInfo = UserInfo.fromJson(res);
      return userInfo;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 獲取用戶會員卡信息
  static Future getUserVipInfo() async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: vipInfoUrl, isApi: false);
      UserVipInfo? userVipInfo = UserVipInfo.fromJson(res);
      return userVipInfo;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 獲取用戶會員等級信息
  static Future<UserGradeInfo?> getUserGradeInfo() async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: gradeInfoUrl, isApi: false);
      UserGradeInfo? userGradeInfo = UserGradeInfo.fromJson(res);
      return userGradeInfo;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 购买会员卡
  static Future buyVipCard(
      {required num? id, required String? name, String? redirectUrl}) async {
    try {
      Map<String, dynamic> params = Map.from({
        'vid': id,
        'name': name,
        'redirectUrl': redirectUrl
      }..removeWhere((key, value) => value == null));

      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: vipBuyUrl, params: params);
      return res;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<VipCardItem>?> getVipCardList() async {
    try {
      List<VipCardItem> list = [];
      List jsonList = await BaseDio.getInstance().get(url: vipListUrl);
      for (var item in jsonList) {
        list.add(VipCardItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<Grade>?> getVipGradeList() async {
    try {
      List<Grade> list = [];
      List jsonList = await BaseDio.getInstance().get(url: gradeListUrl);
      for (var item in jsonList) {
        list.add(Grade.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future upload({required String path}) async {
    try {
      FormData formData = FormData();
      formData.files.add(MapEntry(
        'file',
        await MultipartFile.fromFile(path),
      ));
      final res =
          await BaseDio.getInstance().upload(url: uploadUrl, data: formData);
      UploadItem? item = UploadItem.fromJson(res['data']);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
