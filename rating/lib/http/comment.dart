import 'package:rating/model/comment_item.dart';
import 'package:service_package/service_package.dart';

class CommentResponse {
  static String getCommentUrl =
      '/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/branch';
  static String relatedUrl =
      '/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/related';

  static Future getComment(
      {required String bCode, required int page, int? id}) async {
    try {
      List<CommentItem> list = [];
      String url = '';
      if (id != null) {
        url = '$getCommentUrl/branch/$bCode/$id';
      } else {
        url = 'getCommentUrl/branch/$bCode';
      }
      Map<String, dynamic> params = {
        'page': page,
        'pageSize': ServiceGlobal.pageSize,
        'orderBy': 'desc',
      };
      Map<String, dynamic> res =
          await BaseDio.getInstance().get(url: url, params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return;
      }
      List<dynamic> jsonLists = res['data'];
      for (var item in jsonLists) {
        list.add(CommentItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future submitComment({
    required String bCode,
    bool? isAnonymous,
    required String? userId,
    required String? description,
    bool? satisfied,
    String? files,
    String? label,
    required String? relatedType,
    required String? relatedId,
    num? score,
    required List? commentTags,
  }) async {
    try {
      Map<String, dynamic> params = {
        "isanonymous": isAnonymous ?? false,
        "userId": userId,
        "description": description,
        "satisfied": satisfied ?? true,
        "files": files ?? "",
        "label": label ?? "['味道很棒','服务很好']",
        "relatedType": relatedType,
        "relatedId": relatedId,
        "Score": score ?? 5,
        "commentTags": commentTags
      };
      Map<String, dynamic> res = await BaseDio.getInstance()
          .post(url: '$relatedUrl/$bCode', params: params);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
        return false;
      } else {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "評論成功"}');
        return true;
      }
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
