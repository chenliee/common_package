import 'dart:convert';

import 'package:storage/model/file_item.dart';

import 'category_item.dart';

/// id : 32
/// oldObjectId : "VaXKbVfc3D"
/// title : "珠心算常規班"
/// code : "0013"
/// description : null
/// cover : null
/// contents : null
/// categoryId : 6
/// color : null
/// order : 0
/// oldMySQLID : null
/// showInAppList : null
/// tags : null
/// deletedAt : null
/// createdAt : "2024-03-27T06:27:22.975Z"
/// updatedAt : "2024-03-27T07:02:18.064Z"
/// category : {"id":6,"oldObjectId":"3XuY3IEJJ3","title":"珠心算課程","code":"ABACUS_COURSE","description":null,"cover":null,"parentId":5,"order":0,"oldMySQLID":50,"createdAt":"2024-03-27T06:27:15.148Z","updatedAt":"2024-03-27T06:59:15.572Z"}

CourseItem courseFromJson(String str) => CourseItem.fromJson(json.decode(str));
String courseToJson(CourseItem data) => json.encode(data.toJson());

class CourseItem {
  CourseItem({
    num? id,
    String? oldObjectId,
    String? title,
    String? code,
    dynamic description,
    FileItem? cover,
    String? contents,
    num? categoryId,
    dynamic color,
    num? order,
    dynamic oldMySQLID,
    dynamic showInAppList,
    dynamic tags,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    CategoryItem? category,
    String? marketing,
    List<FileItem?>? covers,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _title = title;
    _code = code;
    _description = description;
    _cover = cover;
    _contents = contents;
    _categoryId = categoryId;
    _color = color;
    _order = order;
    _oldMySQLID = oldMySQLID;
    _showInAppList = showInAppList;
    _tags = tags;
    _deletedAt = deletedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _category = category;
    _marketing = marketing;
    _covers = covers;
  }

  CourseItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _title = json['title'];
    _code = json['code'];
    _description = json['description'];
    _cover = json['cover'] != null ? FileItem.fromJson(json['cover']) : null;
    _contents = json['contents'];
    _categoryId = json['categoryId'];
    _color = json['color'];
    _order = json['order'];
    _oldMySQLID = json['oldMySQLID'];
    _showInAppList = json['showInAppList'];
    _tags = json['tags'];
    _deletedAt = json['deletedAt'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _marketing = json['marketing'];
    _category = json['category'] != null
        ? CategoryItem.fromJson(json['category'])
        : null;
    if (json['covers'] != null) {
      _covers = [];
      json['covers']?.forEach((v) {
        if (v != null) {
          _covers?.add(FileItem.fromJson(v));
        }
      });
    }
  }
  num? _id;
  String? _oldObjectId;
  String? _title;
  String? _code;
  dynamic _description;
  FileItem? _cover;
  String? _contents;
  num? _categoryId;
  dynamic _color;
  num? _order;
  dynamic _oldMySQLID;
  dynamic _showInAppList;
  dynamic _tags;
  dynamic _deletedAt;
  String? _createdAt;
  String? _updatedAt;
  String? _marketing;
  CategoryItem? _category;
  List<FileItem?>? _covers;
  CourseItem copyWith({
    num? id,
    String? oldObjectId,
    String? title,
    String? code,
    dynamic description,
    FileItem? cover,
    String? contents,
    num? categoryId,
    dynamic color,
    num? order,
    dynamic oldMySQLID,
    dynamic showInAppList,
    dynamic tags,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    String? marketing,
    CategoryItem? category,
    List<FileItem?>? covers,
  }) =>
      CourseItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        title: title ?? _title,
        code: code ?? _code,
        description: description ?? _description,
        cover: cover ?? _cover,
        contents: contents ?? _contents,
        categoryId: categoryId ?? _categoryId,
        color: color ?? _color,
        order: order ?? _order,
        oldMySQLID: oldMySQLID ?? _oldMySQLID,
        showInAppList: showInAppList ?? _showInAppList,
        tags: tags ?? _tags,
        deletedAt: deletedAt ?? _deletedAt,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        category: category ?? _category,
        marketing: marketing ?? _marketing,
        covers: covers ?? _covers,
      );

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get title => _title;
  String? get code => _code;
  String? get description => _description;
  FileItem? get cover => _cover;
  String? get contents => _contents;
  num? get categoryId => _categoryId;
  dynamic get color => _color;
  num? get order => _order;
  dynamic get oldMySQLID => _oldMySQLID;
  dynamic get showInAppList => _showInAppList;
  dynamic get tags => _tags;
  dynamic get deletedAt => _deletedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get marketing => _marketing;
  CategoryItem? get category => _category;
  List<FileItem?>? get covers => _covers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['title'] = _title;
    map['code'] = _code;
    map['description'] = _description;
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    map['contents'] = _contents;
    map['categoryId'] = _categoryId;
    map['color'] = _color;
    map['order'] = _order;
    map['oldMySQLID'] = _oldMySQLID;
    map['showInAppList'] = _showInAppList;
    map['tags'] = _tags;
    map['deletedAt'] = _deletedAt;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['marketing'] = _marketing;
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    return map;
  }
}
