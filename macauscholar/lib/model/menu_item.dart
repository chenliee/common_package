import 'dart:convert';

import 'package:storage/model/file_item.dart';

import 'menu_cart.dart';
import 'menu_section.dart';

/// id : 11
/// menuType : "lunch"
/// title : "蛋挞餐"
/// price : 45
/// period : "daily"
/// days : [1,2]
/// package : false
/// cover : {"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/9534693bd9b05c9f8a10d707dbcab97899883f3dc2ae05e6655b64da4192df21ab6257aac322ad9cc6ef6f9cb6a69190d3e744e301282a7b446aad2cfd89280d.jpg","name":"cbf4aa20adb1721877fa4fb7c35a9c91_a6312e119313b07e34134f3b4ad7912396dd8c9f.jpg","__type":"File"}
/// description : "很好吃"
/// withArea : null
/// withBranches : null
/// withoutBranches : ["123"]
/// canBuy : false
/// foodsWeightTable : {"8OKu4VtFRu":100,"Dq6ApjTGkB":700,"HSamIH8dgy":1,"LddsWzRJ3S":250,"OTUsqcCRQs":1,"eCeoSeWLOe":100,"gr8qRvLCHc":100,"l8bGH5EyIK":100,"pbd1A1HZjk":100,"qwCzBZCBrk":3}
/// foodsTitleTable : {"8OKu4VtFRu":"西瓜","Dq6ApjTGkB":"螺蛳粉粉","HSamIH8dgy":"豆沙菠蘿包","LddsWzRJ3S":"冬瓜茶","OTUsqcCRQs":"一个食物","eCeoSeWLOe":"腐竹炆豬肉","gr8qRvLCHc":"時菜","l8bGH5EyIK":"蒜蓉炒節瓜","pbd1A1HZjk":"火腿蒸水蛋","qwCzBZCBrk":"草莓"}
/// foodsSunitTable : {"8OKu4VtFRu":"g","Dq6ApjTGkB":"g","HSamIH8dgy":"a","LddsWzRJ3S":"ml","OTUsqcCRQs":"a","eCeoSeWLOe":"g","gr8qRvLCHc":"g","l8bGH5EyIK":"g","pbd1A1HZjk":"g","qwCzBZCBrk":"a"}
/// dateFrom : "2023-11-30T16:00:00.000Z"
/// dateTo : "2024-02-28T16:00:00.000Z"
/// createdAt : "2024-03-27T06:48:33.607Z"
/// updatedAt : "2024-03-27T06:48:33.607Z"
/// objectId : "v3BGc8JIJA"
/// sn : "v3BGc8JIJA"

MenuItem foodMenusFromJson(String str) => MenuItem.fromJson(json.decode(str));
String foodMenusToJson(MenuItem data) => json.encode(data.toJson());

class MenuItem {
  MenuItem({
    num? id,
    String? menuType,
    String? title,
    num? price,
    String? period,
    List<num>? days,
    bool? package,
    FileItem? cover,
    String? description,
    dynamic withArea,
    dynamic withBranches,
    List<String>? withoutBranches,
    bool? canBuy,
    FoodsWeightTable? foodsWeightTable,
    FoodsTitleTable? foodsTitleTable,
    FoodsSunitTable? foodsSunitTable,
    String? dateFrom,
    String? dateTo,
    String? createdAt,
    String? updatedAt,
    String? objectId,
    String? sn,
    List<MenuSection>? menuSection,
  }) {
    _id = id;
    _menuType = menuType;
    _title = title;
    _price = price;
    _period = period;
    _days = days;
    _package = package;
    _cover = cover;
    _description = description;
    _withArea = withArea;
    _withBranches = withBranches;
    _withoutBranches = withoutBranches;
    _canBuy = canBuy;
    _foodsWeightTable = foodsWeightTable;
    _foodsTitleTable = foodsTitleTable;
    _foodsSunitTable = foodsSunitTable;
    _dateFrom = dateFrom;
    _dateTo = dateTo;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _objectId = objectId;
    _sn = sn;
    _menuSection = menuSection;
  }

  MenuItem.fromJson(dynamic json) {
    _id = json['id'];
    _menuType = json['menuType'];
    _title = json['title'];
    _price = json['price'];
    _period = json['period'];
    _days = json['days'] != null ? json['days'].cast<num>() : [];
    _package = json['package'];
    _cover = json['cover'] != null ? FileItem.fromJson(json['cover']) : null;
    _description = json['description'];
    _withArea = json['withArea'];
    _withBranches = json['withBranches'];
    _withoutBranches = json['withoutBranches'] != null
        ? json['withoutBranches'].cast<String>()
        : [];
    _canBuy = json['canBuy'];
    _foodsWeightTable = json['foodsWeightTable'] != null
        ? FoodsWeightTable.fromJson(json['foodsWeightTable'])
        : null;
    _foodsTitleTable = json['foodsTitleTable'] != null
        ? FoodsTitleTable.fromJson(json['foodsTitleTable'])
        : null;
    _foodsSunitTable = json['foodsSunitTable'] != null
        ? FoodsSunitTable.fromJson(json['foodsSunitTable'])
        : null;
    _dateFrom = json['dateFrom'];
    _dateTo = json['dateTo'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _objectId = json['objectId'];
    _sn = json['sn'];
    if (json['menuSection'] != null) {
      _menuSection = [];
      json['menuSection'].forEach((v) {
        _menuSection?.add(MenuSection.fromJson(v));
      });
    }
  }
  num? _id;
  String? _menuType;
  String? _title;
  num? _price;
  String? _period;
  List<num>? _days;
  bool? _package;
  FileItem? _cover;
  String? _description;
  dynamic _withArea;
  dynamic _withBranches;
  List<String>? _withoutBranches;
  bool? _canBuy;
  FoodsWeightTable? _foodsWeightTable;
  FoodsTitleTable? _foodsTitleTable;
  FoodsSunitTable? _foodsSunitTable;
  String? _dateFrom;
  String? _dateTo;
  String? _createdAt;
  String? _updatedAt;
  String? _objectId;
  String? _sn;
  List<MenuSection>? _menuSection;

  num? get id => _id;
  String? get menuType => _menuType;
  String? get title => _title;
  num? get price => _price;
  String? get period => _period;
  List<num>? get days => _days;
  bool? get package => _package;
  FileItem? get cover => _cover;
  String? get description => _description;
  dynamic get withArea => _withArea;
  dynamic get withBranches => _withBranches;
  List<String>? get withoutBranches => _withoutBranches;
  bool? get canBuy => _canBuy;
  FoodsWeightTable? get foodsWeightTable => _foodsWeightTable;
  FoodsTitleTable? get foodsTitleTable => _foodsTitleTable;
  FoodsSunitTable? get foodsSunitTable => _foodsSunitTable;
  String? get dateFrom => _dateFrom;
  String? get dateTo => _dateTo;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get objectId => _objectId;
  String? get sn => _sn;
  List<MenuSection>? get menuSection => _menuSection;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['menuType'] = _menuType;
    map['title'] = _title;
    map['price'] = _price;
    map['period'] = _period;
    map['days'] = _days;
    map['package'] = _package;
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    map['description'] = _description;
    map['withArea'] = _withArea;
    map['withBranches'] = _withBranches;
    map['withoutBranches'] = _withoutBranches;
    map['canBuy'] = _canBuy;
    if (_foodsWeightTable != null) {
      map['foodsWeightTable'] = _foodsWeightTable?.toJson();
    }
    if (_foodsTitleTable != null) {
      map['foodsTitleTable'] = _foodsTitleTable?.toJson();
    }
    if (_foodsSunitTable != null) {
      map['foodsSunitTable'] = _foodsSunitTable?.toJson();
    }
    map['dateFrom'] = _dateFrom;
    map['dateTo'] = _dateTo;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['objectId'] = _objectId;
    map['sn'] = _sn;
    if (_menuSection != null) {
      map['menuSection'] = _menuSection?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
