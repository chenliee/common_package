import 'dart:convert';

import 'package:storage/storage.dart';

import 'course_item.dart';

/// id : 3
/// oldObjectId : "2vX0xWdGkP"
/// title : "持續進修課程"
/// code : "PDAC_COURSE"
/// description : "12313131321"
/// cover : null
/// parentId : null
/// order : 0
/// oldMySQLID : 10
/// createdAt : "2024-03-27T06:27:14.889Z"
/// updatedAt : "2024-05-17T06:13:20.557Z"
/// children : [{"id":8,"oldObjectId":"3zB2xZFVWy","title":"其他課程","code":"course_6","description":null,"cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:15.544Z","updatedAt":"2024-03-27T06:59:20.358Z","children":[]},{"id":28,"oldObjectId":"dDdSMdt9zv","title":"德語課程","code":"course_3","description":null,"cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:18.020Z","updatedAt":"2024-03-27T07:00:23.160Z","children":[]},{"id":30,"oldObjectId":"eOut4VTv38","title":"英語課程","code":"course_1","description":"英語","cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:18.428Z","updatedAt":"2024-03-27T07:00:30.331Z","children":[]},{"id":32,"oldObjectId":"nIaLQ41HSm","title":"法語課程","code":"course_2","description":"法語","cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:18.833Z","updatedAt":"2024-03-27T07:00:40.659Z","children":[]},{"id":35,"oldObjectId":"pB0MRIkKI1","title":"葡語課程","code":"course_4","description":null,"cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:19.288Z","updatedAt":"2024-03-27T07:00:53.575Z","children":[]},{"id":41,"oldObjectId":"zu2CM9yYYY","title":"美術","code":"MEISHU","description":null,"cover":null,"parentId":3,"order":0,"oldMySQLID":null,"createdAt":"2024-03-27T06:27:20.330Z","updatedAt":"2024-03-27T07:01:20.557Z","children":[]},{"id":76,"oldObjectId":null,"title":"test1222","code":"test1_222","description":"test1_222","cover":null,"parentId":3,"order":null,"oldMySQLID":null,"createdAt":"2024-06-15T06:53:52.899Z","updatedAt":"2024-06-15T06:54:10.957Z","children":[]}]
/// courses : []

CategoryItem categoryItemFromJson(String str) =>
    CategoryItem.fromJson(json.decode(str));
String categoryItemToJson(CategoryItem data) => json.encode(data.toJson());

class CategoryItem {
  CategoryItem({
    num? id,
    String? oldObjectId,
    String? title,
    String? code,
    String? description,
    FileItem? cover,
    dynamic parentId,
    num? order,
    num? oldMySQLID,
    String? createdAt,
    String? updatedAt,
    List<CategoryItem>? children,
    List<CourseItem>? courses,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _title = title;
    _code = code;
    _description = description;
    _cover = cover;
    _parentId = parentId;
    _order = order;
    _oldMySQLID = oldMySQLID;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _children = children;
    _courses = courses;
  }

  CategoryItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _title = json['title'];
    _code = json['code'];
    _description = json['description'];
    _cover = json['cover'] != null ? FileItem.fromJson(json['cover']) : null;
    _parentId = json['parentId'];
    _order = json['order'];
    _oldMySQLID = json['oldMySQLID'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(CategoryItem.fromJson(v));
      });
    }
    if (json['courses'] != null) {
      _courses = [];
      json['courses'].forEach((v) {
        _courses?.add(CourseItem.fromJson(v));
      });
    }
  }
  num? _id;
  String? _oldObjectId;
  String? _title;
  String? _code;
  String? _description;
  FileItem? _cover;
  dynamic _parentId;
  num? _order;
  num? _oldMySQLID;
  String? _createdAt;
  String? _updatedAt;
  List<CategoryItem>? _children;
  List<CourseItem>? _courses;

  CategoryItem copyWith({
    num? id,
    String? oldObjectId,
    String? title,
    String? code,
    String? description,
    FileItem? cover,
    dynamic parentId,
    num? order,
    num? oldMySQLID,
    String? createdAt,
    String? updatedAt,
    List<CategoryItem>? children,
    List<CourseItem>? courses,
  }) =>
      CategoryItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        title: title ?? _title,
        code: code ?? _code,
        description: description ?? _description,
        cover: cover ?? _cover,
        parentId: parentId ?? _parentId,
        order: order ?? _order,
        oldMySQLID: oldMySQLID ?? _oldMySQLID,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        children: children ?? _children,
        courses: courses ?? _courses,
      );

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get title => _title;
  String? get code => _code;
  String? get description => _description;
  FileItem? get cover => _cover;
  dynamic get parentId => _parentId;
  num? get order => _order;
  num? get oldMySQLID => _oldMySQLID;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<CategoryItem>? get children => _children;
  List<CourseItem>? get courses => _courses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['title'] = _title;
    map['code'] = _code;
    map['description'] = _description;
    map['parentId'] = _parentId;
    map['order'] = _order;
    map['oldMySQLID'] = _oldMySQLID;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    if (_courses != null) {
      map['courses'] = _courses?.map((v) => v.toJson()).toList();
    }
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    return map;
  }
}
