import 'dart:convert';

import 'package:member/model/user_grade_info.dart';

class UserVipInfo {
  bool? isVip;
  bool? isHadVip;
  String? validAt;
  CardInfo? cardInfo;

  UserVipInfo({this.isVip, this.isHadVip, this.validAt, this.cardInfo});

  UserVipInfo.fromJson(Map<String, dynamic> json) {
    isVip = json['isVip'];
    isHadVip = json['isHadVip'];
    validAt = json['validAt'];
    cardInfo =
        json['cardInfo'] != null ? CardInfo.fromJson(json['cardInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isVip'] = isVip;
    data['isHadVip'] = isHadVip;
    data['validAt'] = validAt;
    if (cardInfo != null) {
      data['cardInfo'] = cardInfo!.toJson();
    }
    return data;
  }
}

class CardInfo {
  int? id;
  String? vipCardId;
  String? cardType;
  String? description;
  String? guideTitle;
  Privileges? privileges;
  String? coverImg;

  CardInfo({
    this.id,
    this.vipCardId,
    this.cardType,
    this.description,
    this.guideTitle,
    this.privileges,
    this.coverImg,
  });

  CardInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vipCardId = json['vipCardId'];
    cardType = json['cardType'];
    description = json['description'];
    guideTitle = json['guideTitle'];
    privileges = Privileges.fromJson(jsonDecode(json['privileges']));
    coverImg = json['coverImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['vipCardId'] = vipCardId;
    data['cardType'] = cardType;
    data['description'] = description;
    data['guideTitle'] = guideTitle;
    data['privileges'] = privileges;
    data['coverImg'] = coverImg;
    return data;
  }
}
