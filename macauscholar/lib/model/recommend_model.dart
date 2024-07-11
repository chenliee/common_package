import 'dart:convert';

import 'package:gold/gold.dart';

/// offlineCourses : [{"id":149540,"bid":293877,"shopId":"1","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_home1.png"}},{"id":149541,"bid":293878,"shopId":"2","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/180ce42f18c79716233b8f1ccbdff26a8cef78fa61e8bc1b85e4efed0005802c_1665558961945.%E7%BB%84%2019071.png"}}]
/// recentActivity : [{"id":149542,"bid":293879,"shopId":"2","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/180ce42f18c79716233b8f1ccbdff26a8cef78fa61e8bc1b85e4efed0005802c_1665558961945.%E7%BB%84%2019071.png"}},{"id":149543,"bid":293880,"shopId":"1","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_home1.png"}}]
/// videoCourses : [{"id":149544,"bid":293881,"shopId":"1","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_60af1ca7d5aa6705f6abbfc993cae1e2ebe95794978e455a5ddd3aaeb71960c7_home1.png"}},{"id":149545,"bid":293882,"shopId":"2","adInfo":{"cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/180ce42f18c79716233b8f1ccbdff26a8cef78fa61e8bc1b85e4efed0005802c_1665558961945.%E7%BB%84%2019071.png"}}]

RecommendModel recommendModelFromJson(String str) =>
    RecommendModel.fromJson(json.decode(str));
String recommendModelToJson(RecommendModel data) => json.encode(data.toJson());

class RecommendModel {
  RecommendModel({
    List<PositionItem>? offlineCourses,
    List<PositionItem>? recentActivity,
    List<PositionItem>? videoCourses,
  }) {
    _offlineCourses = offlineCourses;
    _recentActivity = recentActivity;
    _videoCourses = videoCourses;
  }

  RecommendModel.fromJson(dynamic json) {
    if (json['offlineCourses'] != null) {
      _offlineCourses = [];
      json['offlineCourses'].forEach((v) {
        _offlineCourses?.add(PositionItem.fromJson(v));
      });
    }
    if (json['recentActivity'] != null) {
      _recentActivity = [];
      json['recentActivity'].forEach((v) {
        _recentActivity?.add(PositionItem.fromJson(v));
      });
    }
    if (json['videoCourses'] != null) {
      _videoCourses = [];
      json['videoCourses'].forEach((v) {
        _videoCourses?.add(PositionItem.fromJson(v));
      });
    }
  }
  List<PositionItem>? _offlineCourses;
  List<PositionItem>? _recentActivity;
  List<PositionItem>? _videoCourses;
  RecommendModel copyWith({
    List<PositionItem>? offlineCourses,
    List<PositionItem>? recentActivity,
    List<PositionItem>? videoCourses,
  }) =>
      RecommendModel(
        offlineCourses: offlineCourses ?? _offlineCourses,
        recentActivity: recentActivity ?? _recentActivity,
        videoCourses: videoCourses ?? _videoCourses,
      );
  List<PositionItem>? get offlineCourses => _offlineCourses;
  List<PositionItem>? get recentActivity => _recentActivity;
  List<PositionItem>? get videoCourses => _videoCourses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_offlineCourses != null) {
      map['offlineCourses'] = _offlineCourses?.map((v) => v.toJson()).toList();
    }
    if (_recentActivity != null) {
      map['recentActivity'] = _recentActivity?.map((v) => v.toJson()).toList();
    }
    if (_videoCourses != null) {
      map['videoCourses'] = _videoCourses?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
