import 'package:flutter/material.dart';

class Strings {
  static String autoLineString(String str) {
    if (str.isNotEmpty) {
      return str.fixAutoLines();
    }
    return "";
  }
}

extension _FixAutoLines on String {
  String fixAutoLines() {
    return Characters(this).join('\u{200B}');
  }
}
