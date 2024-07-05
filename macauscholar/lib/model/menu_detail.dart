import 'dart:convert';

import 'menu_cart.dart';
import 'menu_section.dart';

/// id : 7
/// menuType : "lunch"
/// title : "好吃的午膳套餐"
/// price : 45
/// period : "daily"
/// days : [1,2]
/// package : false
/// cover : null
/// description : null
/// withArea : null
/// withBranches : null
/// withoutBranches : ["1"]
/// canBuy : false
/// foodsWeightTable : {"0Vrzs1SGbP":100,"Dq6ApjTGkB":100,"OTUsqcCRQs":1,"ZG9AGbLDCb":1,"krY76JETEi":100,"nuLx9jFKZw":100,"pbd1A1HZjk":100,"warXjqCwS3":1}
/// foodsTitleTable : {"0Vrzs1SGbP":"燒汁豬扒","Dq6ApjTGkB":"螺蛳粉粉","OTUsqcCRQs":"一个食物","ZG9AGbLDCb":"蘋果","krY76JETEi":"椰菜抄肉絲","nuLx9jFKZw":"朱古力蛋糕","pbd1A1HZjk":"火腿蒸水蛋","warXjqCwS3":"藍莓包"}
/// foodsSunitTable : {"0Vrzs1SGbP":"g","Dq6ApjTGkB":"g","OTUsqcCRQs":"a","ZG9AGbLDCb":"a","krY76JETEi":"g","nuLx9jFKZw":"ml","pbd1A1HZjk":"g","warXjqCwS3":"a"}
/// dateFrom : "2024-02-29T16:00:00.000Z"
/// dateTo : "2024-03-29T16:00:00.000Z"
/// createdAt : "2024-03-27T06:48:27.379Z"
/// updatedAt : "2024-03-27T06:48:27.379Z"
/// objectId : "Ny2LfUeZeU"
/// sn : "Ny2LfUeZeU"
/// menuSection : [{"id":12,"title":"下午场","type":"soup","acceptEmpty":true,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:15.679Z","updatedAt":"2024-03-27T07:36:15.679Z","objectId":"BYuTQ7vZw4","sn":"BYuTQ7vZw4","foods":[{"id":74,"title":"蘋果","weight":1,"unit":"a","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/1fa72f8f139f0000afd5a6fd9fdad160d9b7b75dd044d88be8a03b091149759ba7e5a8a08f64d1be6a4b8252642aa4c6c8780a1bd3ee2ad2469eb80d060d6e5e.jpg","name":"5c2630407105dfccc4140a9c83721a55_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":1,"deleteAt":null,"createdAt":"2024-03-27T03:31:50.766Z","updatedAt":"2024-03-27T05:24:59.355Z","objectId":"ZG9AGbLDCb","sn":"ZG9AGbLDCb"},{"id":92,"title":"椰菜抄肉絲","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/6d2b38e6381f64016bd8272365f1c3c337cba968f690b3a61989e98f5d92001b3c598f85bf863f606a5d757d8fdc96561bb5d75ef9a244835897345a27e63eeb.jpg","name":"9b22ba8bdcb80ee692aeff063deaf3e5_測試圖片.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":"好","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:51.992Z","updatedAt":"2024-03-27T05:25:29.177Z","objectId":"krY76JETEi","sn":"krY76JETEi"},{"id":101,"title":"火腿蒸水蛋","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/10d7bfa5788f3393a129ca4f7746dbec57a10abae92c548606ea6c3ef97378947150b3ba6ef0c90777af02d04834869d1149895fb455568bec0ea6f08895b233.jpg","name":"52a00df8703654638ead79d43ca022f4_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.672Z","updatedAt":"2024-03-27T05:25:45.607Z","objectId":"pbd1A1HZjk","sn":"pbd1A1HZjk"},{"id":129,"title":"一个食物2","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T05:24:24.911Z","updatedAt":"2024-04-20T03:42:59.712Z","objectId":"OTUsqcCRQs","sn":"OTUsqcCRQs"}]},{"id":29,"title":"主菜","type":"main","acceptEmpty":false,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:17.190Z","updatedAt":"2024-03-27T07:36:17.190Z","objectId":"iinobE8j97","sn":"iinobE8j97","foods":[{"id":1,"title":"燒汁豬扒","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:23.197Z","updatedAt":"2024-03-27T05:23:45.510Z","objectId":"0Vrzs1SGbP","sn":"0Vrzs1SGbP"},{"id":31,"title":"螺蛳粉粉","weight":900,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/2165ca5d9ce192255cddbfa29c4868e5c128ac1e2017a71c2b5dd43dc31e53b93e38a2c46fe60747f3a8000c4e74682f5dbb9134de072076ce7d3d500736408e.jpg","name":"387519069f52c827672daf44e6766746_f0f7c582b2b7d0a247b6d6a58def76094a369acb.jpg","__type":"File"},"kcal":4,"carbohydrate":4,"protein":7,"fat":0,"order":-1,"allergens":["应该没有"],"description":"很222香","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:47.727Z","updatedAt":"2024-04-20T09:07:29.497Z","objectId":"Dq6ApjTGkB","sn":"Dq6ApjTGkB"},{"id":99,"title":"朱古力蛋糕","weight":68,"unit":"ml","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.528Z","updatedAt":"2024-03-27T05:25:42.394Z","objectId":"nuLx9jFKZw","sn":"nuLx9jFKZw"},{"id":122,"title":"藍莓包","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.200Z","updatedAt":"2024-03-27T05:26:15.280Z","objectId":"warXjqCwS3","sn":"warXjqCwS3"}]}]

MenuDetail menuDetailFromJson(String str) =>
    MenuDetail.fromJson(json.decode(str));
String menuDetailToJson(MenuDetail data) => json.encode(data.toJson());

class MenuDetail {
  MenuDetail({
    num? id,
    String? menuType,
    String? title,
    num? price,
    String? period,
    List<num>? days,
    bool? package,
    dynamic cover,
    dynamic description,
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

  MenuDetail.fromJson(dynamic json) {
    _id = json['id'];
    _menuType = json['menuType'];
    _title = json['title'];
    _price = json['price'];
    _period = json['period'];
    _days = json['days'] != null ? json['days'].cast<num>() : [];
    _package = json['package'];
    _cover = json['cover'];
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
  dynamic _cover;
  dynamic _description;
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
  dynamic get cover => _cover;
  dynamic get description => _description;
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
    map['cover'] = _cover;
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
