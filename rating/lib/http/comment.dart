import 'package:rating/model/comment_item.dart';
import 'package:service_package/service_package.dart';

class CommentResponse {
  static String getCommentUrl =
      '/rating/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/branch';
  static String relatedUrl =
      '/rating/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/related';

  static Future<List> getComment(
      {required String bCode, required int page, String? id}) async {
    try {
      List<CommentItem> list = [];
      String url = '';
      if (id != null) {
        url = '$getCommentUrl/$bCode/$id';
      } else {
        url = '$getCommentUrl/$bCode';
      }
      Map<String, dynamic> params = {
        'page': page,
        'pageSize': ServiceGlobal.instance.pageSize,
        'orderBy': 'desc',
      };

      Map<String, dynamic> json =
          await BaseDio.getInstance().get(url: url, params: params);
      for (var item in json['list']) {
        list.add(CommentItem.fromJson(item));
      }
      return [list, json['total']];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future submitComment({
    required String bCode,
    bool? isAnonymous,
    required String? userId,
    required String? userItem,
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
        "userItem": userItem,
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
      ToastInfo.toastInfo(msg: '${res['message'] ?? "評論成功"}');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
