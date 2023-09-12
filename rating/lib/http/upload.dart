import 'package:service_package/service_package.dart';

class UploadResponse {
  static String uploadUrl =
      '/app/merchant/${ServiceGlobal.instance.merchantId}/project/${ServiceGlobal.instance.projectId}/upload';

  static Future upload({required String path}) async {
    try {
      FormData formData = FormData();
      formData.files.add(MapEntry(
        'file',
        await MultipartFile.fromFile(path),
      ));
      await BaseDio.getInstance().upload(url: uploadUrl, data: formData);
      ToastInfo.toastInfo(msg: '上傳成功');
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
