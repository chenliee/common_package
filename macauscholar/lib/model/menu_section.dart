import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// id : 19
/// title : "主菜"
/// type : "main"
/// acceptEmpty : false
/// acceptMultiple : false
/// menuId : 1
/// deleteAt : null
/// createdAt : "2024-03-27T07:36:16.488Z"
/// updatedAt : "2024-03-27T07:36:16.488Z"
/// objectId : "OghptYHmtr"
/// sn : "OghptYHmtr"
/// menu : {"id":1,"title":"午膳","price":45}
/// foods : [{"id":85,"title":"皮蛋瘦肉粥","weight":200,"unit":"ml","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":["123"],"description":null,"groupId":6,"deleteAt":null,"createdAt":"2024-03-27T03:31:51.510Z","updatedAt":"2024-03-27T05:25:17.122Z","objectId":"doiuIV0hJE","sn":"doiuIV0hJE"},{"id":92,"title":"椰菜抄肉絲","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/6d2b38e6381f64016bd8272365f1c3c337cba968f690b3a61989e98f5d92001b3c598f85bf863f606a5d757d8fdc96561bb5d75ef9a244835897345a27e63eeb.jpg","name":"9b22ba8bdcb80ee692aeff063deaf3e5_測試圖片.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":"好","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:51.992Z","updatedAt":"2024-03-27T05:25:29.177Z","objectId":"krY76JETEi","sn":"krY76JETEi"},{"id":101,"title":"火腿蒸水蛋","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/10d7bfa5788f3393a129ca4f7746dbec57a10abae92c548606ea6c3ef97378947150b3ba6ef0c90777af02d04834869d1149895fb455568bec0ea6f08895b233.jpg","name":"52a00df8703654638ead79d43ca022f4_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.672Z","updatedAt":"2024-03-27T05:25:45.607Z","objectId":"pbd1A1HZjk","sn":"pbd1A1HZjk"}]

MenuSection menuSectionFromJson(String str) =>
    MenuSection.fromJson(json.decode(str));
String menuSectionToJson(MenuSection data) => json.encode(data.toJson());

class MenuSection {
  MenuSection({
    num? id,
    String? title,
    String? type,
    bool? acceptEmpty,
    bool? acceptMultiple,
    num? menuId,
    dynamic deleteAt,
    String? createdAt,
    String? updatedAt,
    String? objectId,
    String? sn,
    MenuItem? menu,
    List<Foods>? foods,
  }) {
    _id = id;
    _title = title;
    _type = type;
    _acceptEmpty = acceptEmpty;
    _acceptMultiple = acceptMultiple;
    _menuId = menuId;
    _deleteAt = deleteAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _objectId = objectId;
    _sn = sn;
    _menu = menu;
    _foods = foods;
  }

  MenuSection.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _type = json['type'];
    _acceptEmpty = json['acceptEmpty'];
    _acceptMultiple = json['acceptMultiple'];
    _menuId = json['menuId'];
    _deleteAt = json['deleteAt'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _objectId = json['objectId'];
    _sn = json['sn'];
    _menu = json['menu'] != null ? MenuItem.fromJson(json['menu']) : null;
    if (json['foods'] != null) {
      _foods = [];
      json['foods'].forEach((v) {
        _foods?.add(Foods.fromJson(v));
      });
    }
  }
  num? _id;
  String? _title;
  String? _type;
  bool? _acceptEmpty;
  bool? _acceptMultiple;
  num? _menuId;
  dynamic _deleteAt;
  String? _createdAt;
  String? _updatedAt;
  String? _objectId;
  String? _sn;
  MenuItem? _menu;
  List<Foods>? _foods;

  num? get id => _id;
  String? get title => _title;
  String? get type => _type;
  bool? get acceptEmpty => _acceptEmpty;
  bool? get acceptMultiple => _acceptMultiple;
  num? get menuId => _menuId;
  dynamic get deleteAt => _deleteAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get objectId => _objectId;
  String? get sn => _sn;
  MenuItem? get menu => _menu;
  List<Foods>? get foods => _foods;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['type'] = _type;
    map['acceptEmpty'] = _acceptEmpty;
    map['acceptMultiple'] = _acceptMultiple;
    map['menuId'] = _menuId;
    map['deleteAt'] = _deleteAt;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['objectId'] = _objectId;
    map['sn'] = _sn;
    if (_menu != null) {
      map['menu'] = _menu?.toJson();
    }
    if (_foods != null) {
      map['foods'] = _foods?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 85
/// title : "皮蛋瘦肉粥"
/// weight : 200
/// unit : "ml"
/// cover : null
/// kcal : 0
/// carbohydrate : 0
/// protein : 0
/// fat : 0
/// order : 0
/// allergens : ["123"]
/// description : null
/// groupId : 6
/// deleteAt : null
/// createdAt : "2024-03-27T03:31:51.510Z"
/// updatedAt : "2024-03-27T05:25:17.122Z"
/// objectId : "doiuIV0hJE"
/// sn : "doiuIV0hJE"

Foods foodsFromJson(String str) => Foods.fromJson(json.decode(str));
String foodsToJson(Foods data) => json.encode(data.toJson());

class Foods {
  Foods({
    num? id,
    String? title,
    num? weight,
    String? unit,
    dynamic cover,
    num? kcal,
    num? carbohydrate,
    num? protein,
    num? fat,
    num? order,
    List<String>? allergens,
    dynamic description,
    num? groupId,
    dynamic deleteAt,
    String? createdAt,
    String? updatedAt,
    String? objectId,
    String? sn,
  }) {
    _id = id;
    _title = title;
    _weight = weight;
    _unit = unit;
    _cover = cover;
    _kcal = kcal;
    _carbohydrate = carbohydrate;
    _protein = protein;
    _fat = fat;
    _order = order;
    _allergens = allergens;
    _description = description;
    _groupId = groupId;
    _deleteAt = deleteAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _objectId = objectId;
    _sn = sn;
  }

  Foods.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _weight = json['weight'];
    _unit = json['unit'];
    _cover = json['cover'];
    _kcal = json['kcal'];
    _carbohydrate = json['carbohydrate'];
    _protein = json['protein'];
    _fat = json['fat'];
    _order = json['order'];
    _allergens =
        json['allergens'] != null ? json['allergens'].cast<String>() : [];
    _description = json['description'];
    _groupId = json['groupId'];
    _deleteAt = json['deleteAt'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _objectId = json['objectId'];
    _sn = json['sn'];
  }
  num? _id;
  String? _title;
  num? _weight;
  String? _unit;
  dynamic _cover;
  num? _kcal;
  num? _carbohydrate;
  num? _protein;
  num? _fat;
  num? _order;
  List<String>? _allergens;
  dynamic _description;
  num? _groupId;
  dynamic _deleteAt;
  String? _createdAt;
  String? _updatedAt;
  String? _objectId;
  String? _sn;

  num? get id => _id;
  String? get title => _title;
  num? get weight => _weight;
  String? get unit => _unit;
  dynamic get cover => _cover;
  num? get kcal => _kcal;
  num? get carbohydrate => _carbohydrate;
  num? get protein => _protein;
  num? get fat => _fat;
  num? get order => _order;
  List<String>? get allergens => _allergens;
  dynamic get description => _description;
  num? get groupId => _groupId;
  dynamic get deleteAt => _deleteAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get objectId => _objectId;
  String? get sn => _sn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['weight'] = _weight;
    map['unit'] = _unit;
    map['cover'] = _cover;
    map['kcal'] = _kcal;
    map['carbohydrate'] = _carbohydrate;
    map['protein'] = _protein;
    map['fat'] = _fat;
    map['order'] = _order;
    map['allergens'] = _allergens;
    map['description'] = _description;
    map['groupId'] = _groupId;
    map['deleteAt'] = _deleteAt;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['objectId'] = _objectId;
    map['sn'] = _sn;
    return map;
  }
}
