// 收藏接口类
import 'package:member/member.dart';
import 'package:service_package/service_package.dart';

class FavoriteDio {
  static String favoriteUrl =
      '/member/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/favorite';

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
      throw Exception();
    }
  }

  // 获取收藏列表
  static Future getFavoriteList({required num page}) async {
    try {
      List<FavoriteInfo> list = [];
      Map<String, dynamic> params = {
        'page': page,
        'pageSize': ServiceGlobal.instance.pageSize,
      };
      List<dynamic> jsonList = await BaseDio.getInstance().get(url: favoriteUrl, params: params);
      for (dynamic item in jsonList) {
        list.add(FavoriteInfo.fromJson(item));
      }
      return list;
    } catch (e) {
      throw Exception();
    }
  }

  // 取消收藏
  static Future delFavorite({required int id}) async {
    try {
      await BaseDio.getInstance().put(url: '$favoriteUrl/$id');
      ToastInfo.toastInfo(msg: '已移除收藏');
        return true;
    } catch (e) {
      throw Exception();
    }
  }
}
