import 'dart:io';

import 'package:service_package/service_package.dart';

class UploadResponse {
  static Future upload({required File file}) async {
    print(file);
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
}
