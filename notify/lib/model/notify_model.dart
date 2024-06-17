import 'dart:convert';
/// id : 1019
/// projectId : 3
/// uid : "666164d1-3d65-4ed6-aa50-7ff569fe587f"
/// memberId : null
/// title : "團購訂單提醒"
/// message : "【優品先生】您已成功購買優品先生[團購]訂單，有效期至：2024-06-30 10:14，使用二維碼到店兌換，逾期無效，如有疑問請聯絡平台。"
/// params : {"title":"團購訂單提醒","token":"08f9deafae89d29e55bb226fd4c3d93e1bf1","package":"com.goody-stores.app.uat","project":"makmakshop","extraData":{"link":"/group_order_detail/74"}}
/// createdAt : "2024-05-22T03:49:33.992Z"
/// updatedAt : "2024-05-22T03:49:33.992Z"

NotifyModel notifyModelFromJson(String str) => NotifyModel.fromJson(json.decode(str));
String notifyModelToJson(NotifyModel data) => json.encode(data.toJson());
class NotifyModel {
  NotifyModel({
      num? id, 
      num? projectId, 
      String? uid, 
      dynamic memberId, 
      String? title, 
      String? message, 
      Params? params, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _projectId = projectId;
    _uid = uid;
    _memberId = memberId;
    _title = title;
    _message = message;
    _params = params;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  NotifyModel.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _uid = json['uid'];
    _memberId = json['memberId'];
    _title = json['title'];
    _message = json['message'];
    _params = json['params'] != null ? Params.fromJson(json['params']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _projectId;
  String? _uid;
  dynamic _memberId;
  String? _title;
  String? _message;
  Params? _params;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get projectId => _projectId;
  String? get uid => _uid;
  dynamic get memberId => _memberId;
  String? get title => _title;
  String? get message => _message;
  Params? get params => _params;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['uid'] = _uid;
    map['memberId'] = _memberId;
    map['title'] = _title;
    map['message'] = _message;
    if (_params != null) {
      map['params'] = _params?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// title : "團購訂單提醒"
/// token : "08f9deafae89d29e55bb226fd4c3d93e1bf1"
/// package : "com.goody-stores.app.uat"
/// project : "makmakshop"
/// extraData : {"link":"/group_order_detail/74"}

Params paramsFromJson(String str) => Params.fromJson(json.decode(str));
String paramsToJson(Params data) => json.encode(data.toJson());
class Params {
  Params({
      String? title, 
      String? token, 
      String? package, 
      String? project, 
      ExtraData? extraData,}){
    _title = title;
    _token = token;
    _package = package;
    _project = project;
    _extraData = extraData;
}

  Params.fromJson(dynamic json) {
    _title = json['title'];
    _token = json['token'];
    _package = json['package'];
    _project = json['project'];
    _extraData = json['extraData'] != null ? ExtraData.fromJson(json['extraData']) : null;
  }
  String? _title;
  String? _token;
  String? _package;
  String? _project;
  ExtraData? _extraData;

  String? get title => _title;
  String? get token => _token;
  String? get package => _package;
  String? get project => _project;
  ExtraData? get extraData => _extraData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['token'] = _token;
    map['package'] = _package;
    map['project'] = _project;
    if (_extraData != null) {
      map['extraData'] = _extraData?.toJson();
    }
    return map;
  }

}

/// link : "/group_order_detail/74"

ExtraData extraDataFromJson(String str) => ExtraData.fromJson(json.decode(str));
String extraDataToJson(ExtraData data) => json.encode(data.toJson());
class ExtraData {
  ExtraData({
      String? link,}){
    _link = link;
}

  ExtraData.fromJson(dynamic json) {
    _link = json['link'];
  }
  String? _link;

  String? get link => _link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['link'] = _link;
    return map;
  }

}