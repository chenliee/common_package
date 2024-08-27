import 'dart:convert';
/// code : "sms"
/// title : "短信認證"
/// uid : "853.65214548"

LinkModel linkModelFromJson(String str) => LinkModel.fromJson(json.decode(str));
String linkModelToJson(LinkModel data) => json.encode(data.toJson());
class LinkModel {
  LinkModel({
      String? code, 
      String? title, 
      String? uid,}){
    _code = code;
    _title = title;
    _uid = uid;
}

  LinkModel.fromJson(dynamic json) {
    _code = json['code'];
    _title = json['title'];
    _uid = json['uid'];
  }
  String? _code;
  String? _title;
  String? _uid;
LinkModel copyWith({  String? code,
  String? title,
  String? uid,
}) => LinkModel(  code: code ?? _code,
  title: title ?? _title,
  uid: uid ?? _uid,
);
  String? get code => _code;
  String? get title => _title;
  String? get uid => _uid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['title'] = _title;
    map['uid'] = _uid;
    return map;
  }

}