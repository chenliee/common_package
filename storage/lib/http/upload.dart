import 'dart:io';

import 'package:article/http/merchant_dio.dart';
import 'package:service_package/service_package.dart';
import 'package:storage/model/upload_image.dart';

import '../model/file_item.dart';

class UploadResponse {
  static Future upload({required File file}) async {
    String url = '/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/file/';

    Map<String, dynamic> res = await BaseDio.getInstance().post(
      url: url,
      params: {"path": "macauscholar/", "ext": ".jpg"},
    );
    Dio dio = Dio();
    List<int> imageBytes = await file.readAsBytes();
    await dio.put(
      res['action'],
      data: Stream.fromIterable([imageBytes]),
      options: Options(
        contentType: 'image/jpg',
        headers: {
          HttpHeaders.contentLengthHeader: imageBytes.length.toString(), // 添加Content-Length头
        }, // 设置Content-Type为图片类型，根据实际情况修改
      ),
    );

    Map<String, dynamic> tokenRes = await BaseDio.getInstance()
        .get(url: '/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/${res['id']}');

    Map<String, dynamic> fileItem = await BaseDio.getInstance().post(
      url: '/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/verify',
      params: {"token": tokenRes['file']},
    );
    return fileItem;
  }

  static Future<List<FileItem>?> fileList({required int page, int? size, required List<num> catalog, String? name, bool? disablePaging}) async {
    try {
      Map<String, dynamic> params = Map.from({
        "size": size ?? ServiceGlobal.instance.pageSize,
        "page": page,
        "project": ServiceGlobal.instance.projectId,
        "catalog": catalog,
        "name": name,
        "disablePaging": disablePaging,
      })
        ..removeWhere((key, value) => value == null);

      List<FileItem> list = [];
      Map<String, dynamic> jsonLists = await MerchantDio.getInstance().get(
        url: "/storage/api/merchant/${ServiceGlobal.instance.merchantId}/file/",
        params: params,
      );
      for (var item in jsonLists['list']) {
        list.add(FileItem.fromJson(item));
      }
      return list;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }

  static Future putUpload({required FormData formData}) async {
    Dio dio = Dio();
    if (ServiceGlobal.instance.token.isNotEmpty) {
      dio.options.headers = {'content-type': 'multipart/form-data', 'Authorization': 'Bearer ${ServiceGlobal.instance.token}'};
    } else {
      dio.options.headers = {
        'content-type': 'multipart/form-data',
      };
    }

    String url = '${BaseDio.baseUrl}/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/';
    try {
      final res = await dio.put(url, data: formData);
      UploadImage? item = UploadImage.fromJson(res.data);
      return item;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
