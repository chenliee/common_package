import 'package:service_package/service_package.dart';

class UploadResponse {
  static String uploadUrl =
      '/app/merchant/${ServiceGlobal.mid}/project/${ServiceGlobal.pid}/upload';

  static Future upload({required String path}) async {
    try {
      bool isSuccess = false;
      FormData formData = FormData();
      formData.files.add(MapEntry(
        'file',
        await MultipartFile.fromFile(path),
      ));
      Map<String, dynamic> res =
          await BaseDio.getInstance().upload(url: uploadUrl, data: formData);
      if (res.containsKey('success') && !res['success']) {
        ToastInfo.toastApiInfo(msg: '${res['message'] ?? "未知錯誤"}');
      } else {
        ToastInfo.toastInfo(msg: '上傳成功');
        isSuccess = true;
      }
      return isSuccess;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
