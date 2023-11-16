// 收藏接口类
import 'package:member/member.dart';
import 'package:service_package/service_package.dart';

class FavoriteResponse {
  static String baseUrl =
      '/member/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}';
  static String favoriteUrl = '$baseUrl/favorite';
  static String delFavoriteUrl = '$baseUrl/favorite/cancel';

  // 添加收藏
  static Future addFavorite({required int id}) async {
    try {
      Map<String, dynamic> params = {
        'itemId': id,
      };
      await BaseDio.getInstance().post(url: favoriteUrl, params: params);
      ToastInfo.toastInfo(msg: '已加入收藏');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 获取收藏列表
  static Future getFavoriteList(
      {required num page, required String targetType}) async {
    try {
      List<FavoriteItem> list = [];
      Map<String, dynamic> params = {
        'page': page,
        'pageSize': ServiceGlobal.instance.pageSize,
        'targetType': targetType,
      };
      List<dynamic> jsonList =
          await BaseDio.getInstance().get(url: favoriteUrl, params: params);
      for (dynamic item in jsonList) {
        list.add(FavoriteItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  // 取消收藏
  static Future delFavorite({required String id}) async {
    try {
      await BaseDio.getInstance().post(url: '$delFavoriteUrl/$id');
      ToastInfo.toastInfo(msg: '已移除收藏');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
