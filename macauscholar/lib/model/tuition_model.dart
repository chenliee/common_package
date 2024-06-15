import 'dart:convert';

import 'package:gold/gold.dart';

/// tuitionFirstList : [{"id":127579,"bid":292902,"shopId":"幼小補習","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/639e39edd0717e8182cb004d5367db3774c4b01a3753900ccbacfa6b4ab4f2cf_1.png"}},{"id":127580,"bid":292903,"shopId":"中學補習","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/add61ecfd2d71049322ca2d3a33ea10ccda34eb2ad83dc74811787c5106d5795_2.png"}}]
/// tuitionSecondtList : [{"id":127581,"bid":292904,"shopId":"膳食點餐","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/83d45267bff07cf7120327e6fa6662030b07480078988b32bfb59e7ec21e7cca_Group%20895@3x.png"}},{"id":127582,"bid":292905,"shopId":"學習中心","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/3f269866b2dab2ac736aae62559fbca6155dc8b02f3aed0ed3b9fe002ac262d9_Group%20894@3x.png"}},{"id":127583,"bid":292906,"shopId":"學生相冊","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/efafb44c74078a3413a353c4c546584900e69a572f4c8b01b4873faf020198ff_Group%20893@3x.png"}},{"id":127584,"bid":292907,"shopId":"家長綁定","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/10dd3725cd503b224d9b614b0b1ee3e1b994f4961d1ce62b819bd6f5495513b3_Group%20892@3x.png"}}]
/// tuitionAdFirstList : []
/// tuitionAdSecondtList : []

TuitionModel tuitionModelFromJson(String str) =>
    TuitionModel.fromJson(json.decode(str));
String tuitionModelToJson(TuitionModel data) => json.encode(data.toJson());

class TuitionModel {
  TuitionModel({
    List<PositionItem>? tuitionFirstList,
    List<PositionItem>? tuitionSecondList,
    List<PositionItem>? tuitionAdFirstList,
    List<PositionItem>? tuitionAdSecondList,
  }) {
    _tuitionFirstList = tuitionFirstList;
    _tuitionSecondList = tuitionSecondList;
    _tuitionAdFirstList = tuitionAdFirstList;
    _tuitionAdSecondList = tuitionAdSecondList;
  }

  TuitionModel.fromJson(dynamic json) {
    if (json['tuitionFirstList'] != null) {
      _tuitionFirstList = [];
      json['tuitionFirstList'].forEach((v) {
        _tuitionFirstList?.add(PositionItem.fromJson(v));
      });
    }
    if (json['tuitionSecondList'] != null) {
      _tuitionSecondList = [];
      json['tuitionSecondList'].forEach((v) {
        _tuitionSecondList?.add(PositionItem.fromJson(v));
      });
    }
    if (json['tuitionAdFirstList'] != null) {
      _tuitionAdFirstList = [];
      json['tuitionAdFirstList'].forEach((v) {
        _tuitionAdFirstList?.add(PositionItem.fromJson(v));
      });
    }
    if (json['tuitionAdSecondList'] != null) {
      _tuitionAdSecondList = [];
      json['tuitionAdSecondList'].forEach((v) {
        _tuitionAdSecondList?.add(PositionItem.fromJson(v));
      });
    }
  }
  List<PositionItem>? _tuitionFirstList;
  List<PositionItem>? _tuitionSecondList;
  List<PositionItem>? _tuitionAdFirstList;
  List<PositionItem>? _tuitionAdSecondList;
  TuitionModel copyWith({
    List<PositionItem>? tuitionFirstList,
    List<PositionItem>? tuitionSecondList,
    List<PositionItem>? tuitionAdFirstList,
    List<PositionItem>? tuitionAdSecondList,
  }) =>
      TuitionModel(
        tuitionFirstList: tuitionFirstList ?? _tuitionFirstList,
        tuitionSecondList: tuitionSecondList ?? _tuitionSecondList,
        tuitionAdFirstList: tuitionAdFirstList ?? _tuitionAdFirstList,
        tuitionAdSecondList: tuitionAdSecondList ?? _tuitionAdSecondList,
      );
  List<PositionItem>? get tuitionFirstList => _tuitionFirstList;
  List<PositionItem>? get tuitionSecondList => _tuitionSecondList;
  List<PositionItem>? get tuitionAdFirstList => _tuitionAdFirstList;
  List<PositionItem>? get tuitionAdSecondList => _tuitionAdSecondList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_tuitionFirstList != null) {
      map['tuitionFirstList'] =
          _tuitionFirstList?.map((v) => v.toJson()).toList();
    }
    if (_tuitionSecondList != null) {
      map['tuitionSecondList'] =
          _tuitionSecondList?.map((v) => v.toJson()).toList();
    }
    if (_tuitionAdFirstList != null) {
      map['tuitionAdFirstList'] =
          _tuitionAdFirstList?.map((v) => v.toJson()).toList();
    }
    if (_tuitionAdSecondList != null) {
      map['tuitionAdSecondList'] =
          _tuitionAdSecondList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
