// 用戶接口类
import 'package:member/model/vip_card.dart';
import 'package:service_package/service_package.dart';

import '../member.dart';

class UserDio {
  static String userUrl = '/member/app/merchant/${ServiceGlobal.mid}/user';
  static String vipInfoUrl =
      '/member/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/user/vipInfo';
  static String gradeInfoUrl =
      '/member/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/user/gradeInfo';
  static String vipBuyUrl =
      '/member/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/vipcard/buy';
  static String vipListUrl =
      '/member/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/vipcard';
  static String gradeListUrl =
      '/member/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/grade';

  // 獲取用戶信息
  static Future getUserinfo() async {
    try {
      Map<String, dynamic> res = await BaseDio.getInstance().get(url: userUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      UserInfo userInfo = UserInfo.fromJson(res['data']);
      return userInfo;
    } catch (e) {
      throw Exception();
    }
  }

  // 完善用戶信息
  static Future editUserinfo({
    required Map<String, dynamic> params,
  }) async {
    try {
      /*  Map<String, dynamic> params = {
        "username": userName,
        "mobile": mobile,
        "sex": sex,
        "avatar": avatar,
        "email": email,
        "birthday": birthday,
        "habbit": habbit,
        "pid": ServiceGlobal.pid
      };*/
      Map<String, dynamic> res =
          await BaseDio.getInstance().put(url: userUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        UserInfo userInfo = UserInfo.fromJson(res['data']);
        return userInfo;
      }
    } catch (e) {
      throw Exception();
    }
  }

  // 獲取用戶會員卡信息
  static Future getUserVipInfo() async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: vipInfoUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      UserVipInfo userVipInfo = UserVipInfo.fromJson(res['data']);
      return userVipInfo;
    } catch (e) {
      throw Exception();
    }
  }

  // 獲取用戶會員等級信息
  static Future getUserVipGradeInfo() async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: gradeInfoUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      UserVipGradeInfo userVipGradeInfo =
          UserVipGradeInfo.fromJson(res['data']);
      return userVipGradeInfo;
    } catch (e) {
      throw Exception();
    }
  }

  // 购买会员卡
  static Future buyVipCard(
      {required num? id, required String? name, String? redirectUrl}) async {
    try {
      Map<String, dynamic> params = {
        'vid': id,
        'name': name,
      };
      params['redirectUrl'] = redirectUrl;
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: vipBuyUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      return res['data'];
    } catch (e) {
      throw Exception();
    }
  }

  static Future<List<VipCard>> getVipCardList() async {
    try {
      List<VipCard> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: vipListUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return list;
      }
      List jsonList = res['data'];
      for (var item in jsonList) {
        list.add(VipCard.fromJson(item));
      }
      return list;
    } catch (e) {
      throw Exception();
    }
  }

  static Future<List<VipCard>> getVipGradeList() async {
    try {
      List<VipCard> list = [];
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: vipListUrl);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return list;
      }
      List jsonList = res['data'];
      for (var item in jsonList) {
        list.add(VipCard.fromJson(item));
      }
      return list;
    } catch (e) {
      throw Exception();
    }
  }
}
