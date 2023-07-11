import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:service_package/env/env.dart';

class Debug {
  static printMsg(Object message, StackTrace current) {
    if (Env.appEnv != 'pro') {
      CustomTrace trace = CustomTrace(current);
      if (kDebugMode) {
        print(
            '\x1B[31m ———————————————\nprintMsg：${trace.fileName}：${trace.lineNumber}行\n$message \x1B[0m');
      }
    }
  }

  static logG(String message) {
    if (Env.appEnv != 'pro') {
      if (kDebugMode && Platform.isAndroid) {
        print('\x1B[32m $message \x1B[0m');
      }
    }
  }

  static logB(String message) {
    if (Env.appEnv != 'pro') {
      if (kDebugMode && Platform.isAndroid) {
        print('\x1B[34m $message \x1B[0m');
      }
    }
  }

  static logY(String message) {
    if (Env.appEnv != 'pro') {
      if (kDebugMode && Platform.isAndroid) {
        print('\x1B[33m $message \x1B[0m');
      }
    }
  }
}

class CustomTrace {
  late final StackTrace _trace;
  late final String fileName;
  late final int lineNumber;

  CustomTrace(this._trace) {
    _parseTrace();
  }
  void _parseTrace() {
    var traceStr = _trace.toString().split("\n")[0];
    var indexOfFileName = traceStr.indexOf(RegExp(r'[A-Za-z_]+.dart'));
    var fileInfo = traceStr.substring(indexOfFileName);
    var listOfInfo = fileInfo.split(":");
    fileName = listOfInfo[0];
    lineNumber = int.parse(listOfInfo[1]);
  }
}
