import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../service_package.dart';

class ToastInfo {
  static toastInfo(
      {String? msg,
      ToastGravity? gravity,
      Function({String msg})? show,
      bool isApi = false}) {
    if (!ServiceGlobal.instance.toastCustomize || isApi) {
      Fluttertoast.showToast(
          msg: msg ?? '提示信息',
          toastLength: Toast.LENGTH_SHORT,
          gravity: gravity ?? ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black.withOpacity(.8),
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
