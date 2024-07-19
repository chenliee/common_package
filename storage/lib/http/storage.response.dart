// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ApiGenerator
// **************************************************************************

import 'package:service_package/service_package.dart';
import 'package:storage/storage.dart';
import 'package:article/article.dart';
import 'package:storage/model/tag_item.dart';
import 'package:storage/model/catalog_key.dart';
import 'package:storage/model/del_file.dart';
import 'package:storage/model/file_key.dart';

class StorageResponse {
  static Future<List<FileItem>?> getFileList(
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

  static Future<List<TagItem>?> getTagList(
      {required int page,
      int? size,
      Map<dynamic, dynamic>? filter,
      String? keyword}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size ?? ServiceGlobal.instance.pageSize,
        "page": page,
        "filter": filter,
        "keyword": keyword,
      })
        ..removeWhere((key, value) => value == null);

      List<TagItem> list = [];
      List<dynamic> jsonLists = await MerchantDio.getInstance().get(
        url: "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/tag/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(TagItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TagItem> getTagDetail(
      {required String group, required String name}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "group": group,
        "name": name,
      })
        ..removeWhere((key, value) => value == null);

      TagItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().get(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/tag/$group/$name/",
        params: params,
      );
      item = TagItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TagItem> addTag(
      {required String group, required String name, String? desc}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "group": group,
        "name": name,
        "desc": desc,
      })
        ..removeWhere((key, value) => value == null);

      TagItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().post(
        url: "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/tag/",
        params: params,
      );
      item = TagItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CatalogItem?> addCatalog(
      {required Map<dynamic, dynamic>? config,
      required String name,
      String? description,
      String? code}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "config": config,
        "description": description,
        "name": name,
        "code": code,
      })
        ..removeWhere((key, value) => value == null);

      CatalogItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().post(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/catalog/",
        params: params,
      );
      item = CatalogItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CatalogItem> editCatalog(
      {Map<dynamic, dynamic>? config,
      required String? id,
      String? name,
      Map<dynamic, dynamic>? files,
      String? description,
      String? code}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "id": id,
        "description": description,
        "name": name,
        "code": code,
        "config": config,
        "files": files,
      })
        ..removeWhere((key, value) => value == null);

      CatalogItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().put(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/catalog/$id/",
        params: params,
      );
      item = CatalogItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<List<CatalogItem>?> getCatalogList(
      {required int page,
      int? size,
      Map<dynamic, dynamic>? filter,
      String? keyword,
      List<String>? file,
      List<String>? info}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size ?? ServiceGlobal.instance.pageSize,
        "page": page,
        "filter": filter,
        "keyword": keyword,
        "file": file,
        "info": info,
      })
        ..removeWhere((key, value) => value == null);

      List<CatalogItem> list = [];
      List<dynamic> jsonLists = await MerchantDio.getInstance().get(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/catalog/",
        params: params,
      );
      for (var item in jsonLists) {
        list.add(CatalogItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<CatalogKey?> editCatalogKey(
      {required num catalog, required String key, required num file}) async {
    try {
      CatalogKey? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().post(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/catalog/$catalog/key/$key/file/$file",
      );
      item = CatalogKey.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<TagItem?> bindTag(
      {required int? catalog,
      int? file,
      required String operate,
      required String group,
      required String name}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "file": file,
        "catalog": catalog,
        "operate": operate,
      })
        ..removeWhere((key, value) => value == null);

      TagItem? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().post(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/tag/$group/$name/bind",
        params: params,
      );
      item = TagItem.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<DelFile?> delFile({required String? id}) async {
    try {
      DelFile? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().delete(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/$id/",
      );
      item = DelFile.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future<FileKey?> editFileKey(
      {required String? file,
      required String? key,
      required String? value}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "value": value,
      })
        ..removeWhere((key, value) => value == null);

      FileKey? item;
      Map<String, dynamic> res = await MerchantDio.getInstance().put(
        url:
            "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/$file/key/$key",
        params: params,
      );
      item = FileKey.fromJson(res);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
