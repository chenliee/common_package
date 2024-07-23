import 'package:rating/model/comment_item.dart';
import 'package:service_package/service_package.dart';

class CommentResponse {
  static Future<List> getCommentList(
      {required String bCode,
      required int page,
      int? pageSize,
      List<num>? date,
      List<String>? commentTags,
      String? projectId}) async {
    try {
      List<CommentItem> list = [];
      String project = projectId ?? ServiceGlobal.instance.projectId;
      Map<String, dynamic> params = Map.from({
        'page': page,
        'pageSize': pageSize ?? ServiceGlobal.instance.pageSize,
        'orderBy': 'desc',
        'date': date,
        'commentTags': commentTags
      })
        ..removeWhere((key, value) => value == null);

      Map<String, dynamic> json = await BaseDio.getInstance().get(
          url:
              '/rating/app/merchant/${ServiceGlobal.instance.merchantId}/project/$project/branch/$bCode',
          params: params);
      for (var item in json['list']) {
        list.add(CommentItem.fromJson(item));
      }
      return [list, json['total']];
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List> getComment(
      {required String bCode,
      required int page,
      String? id,
      String? projectId}) async {
    try {
      List<CommentItem> list = [];
      String url = '';
      String project = projectId ?? ServiceGlobal.instance.projectId;
      if (id != null) {
        url =
            '/rating/app/merchant/${ServiceGlobal.instance.merchantId}/project/$project/branch/$bCode/$id';
      } else {
        url =
            '/rating/app/merchant/${ServiceGlobal.instance.merchantId}/project/$project/branch/$bCode';
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
    String? date,
    required List? commentTags,
    required String projectId,
  }) async {
    try {
      String project = projectId ?? ServiceGlobal.instance.projectId;

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
        "date":date,
        "commentTags": commentTags
      };
      Map<String, dynamic> res = await BaseDio.getInstance().post(
          url:
              '/rating/app/merchant/${ServiceGlobal.instance.merchantId}/project/$project/related/$bCode',
          params: params);
      ToastInfo.toastInfo(msg: '${res['message'] ?? "評論成功"}');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
