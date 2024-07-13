import 'dart:io';

import 'package:service_package/api/api_gen.dart';
import 'package:storage/model/catalog_key.dart';
import 'package:storage/model/del_file.dart';
import 'package:storage/model/tag_item.dart';
import 'package:storage/storage.dart';

/// package:service_package/service_package.dart
/// package:storage/storage.dart
/// package:article/article.dart
/// package:storage/model/tag_item.dart
/// package:storage/model/catalog_key.dart
/// package:storage/model/del_file.dart
@ApiGen('/storage', file: 'StorageResponse', dio: 'MerchantDio')
abstract class Storage {
  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/file/',
    method: ApiGen.GET,
    params: {
      'size': '@C_size??ServiceGlobal.instance.pageSize',
      'page': '@C_page',
      'project': '@C_ServiceGlobal.instance.projectId',
      'catalog': '@C_catalog',
    },
    target: 'FileItem',
  )
  Future<List<FileItem>?> getFileList({required int page, int? size, required List<num> catalog});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\${ServiceGlobal.instance.projectId}'
    '/catalog/\$id/',
    method: ApiGen.GET,
    target: 'CatalogItem',
  )
  Future<CatalogItem?> getCatalog({required int id});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/tag/',
    method: ApiGen.GET,
    params: {
      'size': '@C_size??ServiceGlobal.instance.pageSize',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
    },
    target: 'TagItem',
  )
  Future<List<TagItem>?> getTagList({required int page, int? size, Map? filter, String? keyword});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/tag/\$group/\$name/',
    method: ApiGen.GET,
    params: {
      'group': '@C_group',
      'name': '@C_name',
    },
    target: 'TagItem',
  )
  Future<TagItem> getTagDetail({required String group, required String name});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/tag/',
    method: ApiGen.POST,
    params: {
      'group': '@C_group',
      'name': '@C_name',
      'desc': '@C_desc',
    },
    target: 'TagItem',
  )
  Future<TagItem> addTag({required String group, required String name, String? desc});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\${ServiceGlobal.instance.projectId}/catalog/',
    method: ApiGen.POST,
    params: {
      'config': '@C_config',
      'description': '@C_description',
      'name': '@C_name',
      'code': '@C_code',
    },
    target: 'CatalogItem',
  )
  Future<CatalogItem?> addCatalog({required Map? config, required String name, String? description, String? code});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\${ServiceGlobal.instance.projectId}/catalog/\$id/',
    method: ApiGen.PUT,
    params: {
      'id': '@C_id',
      'description': '@C_description',
      'name': '@C_name',
      'code': '@C_code',
      'config': '@C_config',
      'files': '@C_files',
    },
    target: 'CatalogItem',
  )
  Future<CatalogItem> editCatalog(
      {Map? config, required String? id, String? name, Map? files, String? description, String? code});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\${ServiceGlobal.instance.projectId}/catalog/',
    method: ApiGen.GET,
    params: {
      'size': '@C_size??ServiceGlobal.instance.pageSize',
      'page': '@C_page',
      'filter': '@C_filter',
      'keyword': '@C_keyword',
      'file': '@C_file',
      'info': '@C_info',
    },
    target: 'CatalogItem',
  )
  Future<List<CatalogItem>?> getCatalogList(
      {required int page, int? size, Map? filter, String? keyword, List<String>? file, List<String>? info});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\${ServiceGlobal.instance.projectId}/catalog/\$catalog/key/\$key/file/\$file',
    method: ApiGen.POST,
    target: 'CatalogKey',
  )
  Future<CatalogKey?> editCatalogKey({required num catalog, required String key, required num file});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/tag/\$group/\$name/bind',
    method: ApiGen.POST,
    params: {
      'file': '@C_file',
      'catalog': '@C_catalog',
      'operate': '@C_operate',
    },
    target: 'TagItem',
  )
  Future<TagItem?> bindTag(
      {required int? catalog, int? file, required String operate, required String group, required String name});

  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/project/\${ServiceGlobal.instance.projectId}/\$id/',
    method: ApiGen.DELETE,
    target: 'DelFile',
  )
  Future<DelFile?> delFile({required String? id});
}
