import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

class UpLoad {
  static Future<File> uploadImage({required int type}) async {
    final ImagePicker picker = ImagePicker();
    var pickedFile = await picker.pickImage(
        source: type == 0 ? ImageSource.gallery : ImageSource.camera);
    File selectedImage =
        await picFileCompressAndGetFile(File(pickedFile!.path)) as File;
    return selectedImage;
  }

  static Future<Object?> picFileCompressAndGetFile(File file) async {
    if (file.readAsBytesSync().lengthInBytes / 1024 < 2 * 1024) return file;
    final filePath = file.absolute.path;
    final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
    final splitter = filePath.substring(0, (lastIndex));
    final outPath = "${splitter}_out${filePath.substring(lastIndex)}";

    return await FlutterImageCompress.compressAndGetFile(
      filePath,
      outPath,
      quality: 88,
      rotate: 180,
    );
  }
}
