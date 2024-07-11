import 'dart:convert';

import 'package:storage/model/file_item.dart';

/// classId : 435
/// sn : "0NEQMljAEl"
/// cover : null
/// title : "dev测试班级"
/// price : 600
/// discountPrice : 540

DiscountClassModel discountClassModelFromJson(String str) =>
    DiscountClassModel.fromJson(json.decode(str));
String discountClassModelToJson(DiscountClassModel data) =>
    json.encode(data.toJson());

class DiscountClassModel {
  DiscountClassModel({
    num? classId,
    String? sn,
    FileItem? cover,
    String? title,
    num? price,
    num? discountPrice,
  }) {
    _classId = classId;
    _sn = sn;
    _cover = cover;
    _title = title;
    _price = price;
    _discountPrice = discountPrice;
  }

  DiscountClassModel.fromJson(dynamic json) {
    _classId = json['classId'];
    _sn = json['sn'];
    _cover = json['cover'] != null ? FileItem.fromJson(json['cover']) : null;
    _title = json['title'];
    _price = json['price'];
    _discountPrice = json['discountPrice'];
  }
  num? _classId;
  String? _sn;
  FileItem? _cover;
  String? _title;
  num? _price;
  num? _discountPrice;
  DiscountClassModel copyWith({
    num? classId,
    String? sn,
    FileItem? cover,
    String? title,
    num? price,
    num? discountPrice,
  }) =>
      DiscountClassModel(
        classId: classId ?? _classId,
        sn: sn ?? _sn,
        cover: cover ?? _cover,
        title: title ?? _title,
        price: price ?? _price,
        discountPrice: discountPrice ?? _discountPrice,
      );
  num? get classId => _classId;
  String? get sn => _sn;
  FileItem? get cover => _cover;
  String? get title => _title;
  num? get price => _price;
  num? get discountPrice => _discountPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['classId'] = _classId;
    map['sn'] = _sn;
    map['cover'] = _cover?.toJson();
    map['title'] = _title;
    map['price'] = _price;
    map['discountPrice'] = _discountPrice;
    return map;
  }
}
