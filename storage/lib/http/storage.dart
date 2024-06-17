import 'package:service_package/api/api_gen.dart';
import 'package:storage/storage.dart';

/// package:service_package/service_package.dart
/// package:storage/storage.dart
/// package:article/article.dart
@ApiGen('/storage', file: 'StorageResponse', dio: 'MerchantDio')
abstract class Storage {
  @ApiGen(
    '/api/merchant/\${ServiceGlobal.instance.merchantId}/file/',
    method: ApiGen.GET,
    params: {
      'size': '@C_size??ServiceGlobal.instance.pageSize',
      'page': '@C_page',
      'project': '@C_project',
      'catalog': '@C_catalog',
    },
    target: 'FileItem',
  )
  Future<List<FileItem>?> getFileList(
      {required int page,
      int? size,
      required String project,
      required List<num> catalog});
}
