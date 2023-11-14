import 'package:service_package/service_package.dart';

class UploadResponse {
  static String uploadUrl = '/member/api/merchant/goody/upload/';

  static Future upload({required String path}) async {
    try {
      FormData formData = FormData();
      formData.files.add(MapEntry(
        'file',
        await MultipartFile.fromFile(path),
      ));
      await BaseDio.getInstance().upload(url: uploadUrl, data: formData);
      return true;
    } catch (e) {
      Debug.printMsg(e, StackTrace.current);
      rethrow;
    }
  }
}
