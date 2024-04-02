import 'package:member/member.dart';
import 'package:service_package/service_package.dart';

// 地址接口类
class AddressResponse {
  static String addressListUrl =
      '/member/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/address';

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
      await BaseDio.getInstance().post(url: addressListUrl, params: params);
      ToastInfo.toastInfo(msg: '添加成功');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 获取地址列表
  static Future<List<AddressItem>> getAddressList({num? page}) async {
    try {
      List<AddressItem> list = [];
      Map<String, dynamic> params = page != null
          ? {
              'page': page,
              'pageSize': ServiceGlobal.instance.pageSize,
            }
          : {};
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: addressListUrl, params: params);
      for (dynamic item in jsonList) {
        list.add(AddressItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 获取地址
  static Future<AddressItem?> getAddress({required int id}) async {
    try {
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: '$addressListUrl/$id');
      AddressItem addressInfo = AddressItem.fromJson(res);
      return addressInfo;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 修改地址
  static Future<bool> editAddress(
      {required num id,
      required String? userName,
      required String? mobile,
      required int? sex,
      required String? mapType,
      required String? place,
      required String? street,
      required String? detail,
      required num? lat,
      required num? lng,
      required num? isDefault,
      String? poi}) async {
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
      await BaseDio.getInstance()
          .put(url: '$addressListUrl/$id', params: params);
      ToastInfo.toastInfo(msg: '修改成功');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 删除地址
  static Future<bool> delAddress({required num id}) async {
    try {
      await BaseDio.getInstance().delete(url: '$addressListUrl/$id');
      ToastInfo.toastInfo(msg: '删除成功');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
