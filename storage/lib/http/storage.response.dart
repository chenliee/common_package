// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:article/article.dart';
import 'package:service_package/service_package.dart';
import 'package:storage/storage.dart';

class StorageResponse {
  static Future<List<FileItem>> getFileList(
      {required int page, int? size, required List<num> catalog}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size ?? ServiceGlobal.instance.pageSize,
        "page": page,
        "project": ServiceGlobal.instance.projectId,
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

  static Future<CatalogItem?> getCatalog({required int id}) async {
    try {
      CatalogItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().get(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/catalog/$id/",
      );
      item = CatalogItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
