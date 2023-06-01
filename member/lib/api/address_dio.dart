import 'package:member/member.dart';
import 'package:service_package/service_package.dart';

// 地址接口类
class AddressDio {
  static String addressListUrl =
      '/member/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/address';

  // 添加地址
  static Future<bool> addAddress(
      {required String? userName,
      required String? mobile,
      required int? sex,
      required String? mapType,
      required String? place,
      required String? street,
      required String? detail,
      required num? lat,
      required num? lng,
      num? isDefault}) async {
    try {
      Map<String, dynamic> params = {
        "username": userName,
        "mobile": mobile,
        "sex": sex,
        "mapType": mapType,
        "place": place,
        "street": street,
        "detail": detail,
        "lat": lat,
        "lng": lng,
        "isDefault": isDefault ?? 0
      };
      Map<String, dynamic> res =
          await BaseDio.getInstance().post(url: addressListUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        ToastInfo.toastInfo(msg: '添加成功');
        return true;
      }
    } catch (e) {
      throw Exception();
    }
  }

  // 获取地址列表
  static Future<List<AddressInfo>> getAddressList({num? page}) async {
    try {
      List<AddressInfo> list = [];
      Map<String, dynamic> params = {};
      if (page != null) {
        params = {
          'page': page,
          'pageSize': ServiceGlobal.pageSize,
        };
      }
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: addressListUrl, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return [];
      }
      List<dynamic> jsonList = res['data'];
      for (dynamic item in jsonList) {
        list.add(AddressInfo.fromJson(item));
      }
      return list;
    } catch (e) {
      throw Exception();
    }
  }

  // 获取地址
  static Future<AddressInfo?> getAddress({required int id}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$addressListUrl/$id');
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return null;
      }
      AddressInfo addressInfo = AddressInfo.fromJson(res['data']);
      return addressInfo;
    } catch (e) {
      throw Exception();
    }
  }

  // 修改地址
  static Future<bool> editAddress(
      {required int id,
      required String? userName,
      required String? mobile,
      required int? sex,
      required String? mapType,
      required String? place,
      required String? street,
      required String? detail,
      required num? lat,
      required num? lng,
      required num? isDefault}) async {
    try {
      Map<String, dynamic> params = {
        "username": userName,
        "mobile": mobile,
        "sex": sex,
        "mapType": mapType,
        "place": place,
        "street": street,
        "detail": detail,
        "lat": lat,
        "lng": lng,
        "isDefault": isDefault
      };
      Map<String, dynamic> res = await BaseDio.getInstance()
          .put(url: '$addressListUrl/$id', params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      }
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        ToastInfo.toastInfo(msg: '添加成功');
        return true;
      }
    } catch (e) {
      throw Exception();
    }
  }

  // 删除地址
  static Future<bool> delAddress({required int id}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().delete(url: '$addressListUrl/$id');
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        ToastInfo.toastInfo(msg: '删除成功');
        return true;
      }
    } catch (e) {
      throw Exception();
    }
  }
}
