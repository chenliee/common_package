import 'dart:convert';

import 'package:macauscholar/model/tuition_student.dart';
/// id : 3
/// userId : 1
/// name : "我的"
/// branch : null
/// description : null
/// createdAt : "2024-07-02T05:39:44.098Z"
/// updatedAt : "2024-07-03T02:44:06.491Z"
/// user : {"id":1,"uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"createdAt":"2024-07-01T06:00:14.789Z","updatedAt":"2024-07-01T06:00:14.789Z"}
/// student : [{"id":1,"gender":null,"branch":"B0000879","specialNeeds":null,"number":"YL010015","appetite":1,"favourites":null,"characters":null,"phone":null,"state":"active","displayName":"小李","resultRecord":null,"schoolYearId":5,"balanceAccount":null,"allergyDrugs":null,"autoTransferAccount":null,"enName":null,"schoolId":103,"allergyFoods":null,"avatar":null,"parentRequirements":null,"member":"","registrationForm":null,"joinAt":null,"mongoDBId":"04AmDHdE2o","birthday":null,"referrerId":null,"card":null,"createdAt":"2022-08-31T09:02:11.766Z","updatedAt":"2024-05-10T09:54:33.799Z","deletedAt":null}]

TuitionGroupDetail tuitionGroupDetailFromJson(String str) => TuitionGroupDetail.fromJson(json.decode(str));
String tuitionGroupDetailToJson(TuitionGroupDetail data) => json.encode(data.toJson());
class TuitionGroupDetail {
  TuitionGroupDetail({
      num? id, 
      num? userId, 
      String? name, 
      dynamic branch, 
      dynamic description, 
      String? createdAt, 
      String? updatedAt, 
      User? user, 
      List<TuitionStudent>? student,}){
    _id = id;
    _userId = userId;
    _name = name;
    _branch = branch;
    _description = description;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _user = user;
    _student = student;
}

  TuitionGroupDetail.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _name = json['name'];
    _branch = json['branch'];
    _description = json['description'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['student'] != null) {
      _student = [];
      json['student'].forEach((v) {
        _student?.add(TuitionStudent.fromJson(v));
      });
    }
  }
  num? _id;
  num? _userId;
  String? _name;
  dynamic _branch;
  dynamic _description;
  String? _createdAt;
  String? _updatedAt;
  User? _user;
  List<TuitionStudent>? _student;

  num? get id => _id;
  num? get userId => _userId;
  String? get name => _name;
  dynamic get branch => _branch;
  dynamic get description => _description;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  User? get user => _user;
  List<TuitionStudent>? get student => _student;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['name'] = _name;
    map['branch'] = _branch;
    map['description'] = _description;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_student != null) {
      map['student'] = _student?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


/// id : 1
/// uid : "9e0e456f-3013-464c-8be7-cfe27704a988"
/// rules : ["employee"]
/// createdAt : "2024-07-01T06:00:14.789Z"
/// updatedAt : "2024-07-01T06:00:14.789Z"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      num? id, 
      String? uid, 
      List<String>? rules, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _uid = uid;
    _rules = rules;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _uid = json['uid'];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _uid;
  List<String>? _rules;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get uid => _uid;
  List<String>? get rules => _rules;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uid'] = _uid;
    map['rules'] = _rules;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}