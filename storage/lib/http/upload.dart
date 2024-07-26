import 'dart:io';

import 'package:service_package/service_package.dart';
import 'package:storage/model/upload_image.dart';

class UploadResponse {
  static Future upload({required File file}) async {
    String url =
        '/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/file/';

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
          HttpHeaders.contentLengthHeader:
              imageBytes.length.toString(), // 添加Content-Length头
        }, // 设置Content-Type为图片类型，根据实际情况修改
      ),
    );

    Map<String, dynamic> tokenRes = await BaseDio.getInstance().get(
        url:
            '/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/${res['id']}');

    Map<String, dynamic> fileItem = await BaseDio.getInstance().post(
      url:
          '/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/verify',
      params: {"token": tokenRes['file']},
    );
    return fileItem;
  }

  static Future putUpload({required FormData formData}) async {
    Dio dio = Dio();
    if (ServiceGlobal.instance.token.isNotEmpty) {
      dio.options.headers = {
        'content-type': 'multipart/form-data',
        'Authorization': 'Bearer ${ServiceGlobal.instance.token}'
      };
    } else {
      dio.options.headers = {
        'content-type': 'multipart/form-data',
      };
    }

    String url =
        '${BaseDio.baseUrl}/storage/api/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/';
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
