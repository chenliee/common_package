import 'package:flutter/material.dart';

class Stitching {
  List<Map<String, dynamic>> extractDataByTargetId(
  List<dynamic> res, int targetId) {
    List<Map<String, dynamic>> extractedData = [];
    for (var item in res) {
      if (item['targetId'] == targetId) {
        extractedData.add(item);
      }
    }
    return extractedData;
  }
  
}

class FormFactor {
  static double desktop = 900;
  static double tablet = 600;
  static double handset = 300;
}

enum ScreenSize { Small, Normal, Large, ExtraLarge }

ScreenSize getSize(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.shortestSide;
  if (deviceWidth > 900) return ScreenSize.ExtraLarge;
  if (deviceWidth > 600) return ScreenSize.Large;
  if (deviceWidth > 300) return ScreenSize.Normal;
  return ScreenSize.Small;
}
