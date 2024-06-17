// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:storage/storage.dart';
import 'package:article/article.dart';

class StorageResponse {
  static Future<List<FileItem>?> getFileList(
      {required int page,
      int? size,
      required String project,
      required List<num> catalog}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size ?? ServiceGlobal.instance.pageSize,
        "page": page,
        "project": project,
        "catalog": catalog,
      })
        ..removeWhere((key, value) => value == null);

      List<FileItem> list = [];
      List<dynamic> jsonLists = await MerchantDio.getInstance().get(
        url: "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/file/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(FileItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
