import 'dart:convert';

import 'package:storage/model/file_item.dart';

import 'menu_section.dart';

/// list : [{"items":[{"name":"好吃的午膳套餐","amount":45,"realAmount":45,"type":"ADD","menuId":7,"menuSectionId":[12,29],"foodIds":[74,1],"cover":null,"description":null,"menu":{"id":7,"menuType":"lunch","title":"好吃的午膳套餐","price":45,"period":"daily","days":[],"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":[],"canBuy":false,"foodsWeightTable":{"0Vrzs1SGbP":100,"Dq6ApjTGkB":100,"OTUsqcCRQs":1,"ZG9AGbLDCb":1,"krY76JETEi":100,"nuLx9jFKZw":100,"pbd1A1HZjk":100,"warXjqCwS3":1},"foodsTitleTable":{"0Vrzs1SGbP":"燒汁豬扒","Dq6ApjTGkB":"螺蛳粉粉","OTUsqcCRQs":"一个食物","ZG9AGbLDCb":"蘋果","krY76JETEi":"椰菜抄肉絲","nuLx9jFKZw":"朱古力蛋糕","pbd1A1HZjk":"火腿蒸水蛋","warXjqCwS3":"藍莓包"},"foodsSunitTable":{"0Vrzs1SGbP":"g","Dq6ApjTGkB":"g","OTUsqcCRQs":"a","ZG9AGbLDCb":"a","krY76JETEi":"g","nuLx9jFKZw":"ml","pbd1A1HZjk":"g","warXjqCwS3":"a"},"dateFrom":"2024-02-29T16:00:00.000Z","dateTo":"2024-03-29T16:00:00.000Z","createdAt":"2024-03-27T06:48:27.379Z","updatedAt":"2024-03-27T06:48:27.379Z","objectId":"Ny2LfUeZeU","sn":"Ny2LfUeZeU","menuSection":[{"id":12,"title":"下午场","type":"soup","acceptEmpty":true,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:15.679Z","updatedAt":"2024-03-27T07:36:15.679Z","objectId":"BYuTQ7vZw4","sn":"BYuTQ7vZw4","foods":[{"id":74,"title":"蘋果","weight":1,"unit":"a","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/1fa72f8f139f0000afd5a6fd9fdad160d9b7b75dd044d88be8a03b091149759ba7e5a8a08f64d1be6a4b8252642aa4c6c8780a1bd3ee2ad2469eb80d060d6e5e.jpg","name":"5c2630407105dfccc4140a9c83721a55_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":1,"deleteAt":null,"createdAt":"2024-03-27T03:31:50.766Z","updatedAt":"2024-03-27T05:24:59.355Z","objectId":"ZG9AGbLDCb","sn":"ZG9AGbLDCb"},{"id":92,"title":"椰菜抄肉絲","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/6d2b38e6381f64016bd8272365f1c3c337cba968f690b3a61989e98f5d92001b3c598f85bf863f606a5d757d8fdc96561bb5d75ef9a244835897345a27e63eeb.jpg","name":"9b22ba8bdcb80ee692aeff063deaf3e5_測試圖片.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":"好","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:51.992Z","updatedAt":"2024-03-27T05:25:29.177Z","objectId":"krY76JETEi","sn":"krY76JETEi"},{"id":101,"title":"火腿蒸水蛋","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/10d7bfa5788f3393a129ca4f7746dbec57a10abae92c548606ea6c3ef97378947150b3ba6ef0c90777af02d04834869d1149895fb455568bec0ea6f08895b233.jpg","name":"52a00df8703654638ead79d43ca022f4_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.672Z","updatedAt":"2024-03-27T05:25:45.607Z","objectId":"pbd1A1HZjk","sn":"pbd1A1HZjk"},{"id":129,"title":"一个食物2","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T05:24:24.911Z","updatedAt":"2024-04-20T03:42:59.712Z","objectId":"OTUsqcCRQs","sn":"OTUsqcCRQs"}]},{"id":29,"title":"主菜","type":"main","acceptEmpty":false,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:17.190Z","updatedAt":"2024-03-27T07:36:17.190Z","objectId":"iinobE8j97","sn":"iinobE8j97","foods":[{"id":1,"title":"燒汁豬扒","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:23.197Z","updatedAt":"2024-03-27T05:23:45.510Z","objectId":"0Vrzs1SGbP","sn":"0Vrzs1SGbP"},{"id":31,"title":"螺蛳粉粉","weight":900,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/2165ca5d9ce192255cddbfa29c4868e5c128ac1e2017a71c2b5dd43dc31e53b93e38a2c46fe60747f3a8000c4e74682f5dbb9134de072076ce7d3d500736408e.jpg","name":"387519069f52c827672daf44e6766746_f0f7c582b2b7d0a247b6d6a58def76094a369acb.jpg","__type":"File"},"kcal":4,"carbohydrate":4,"protein":7,"fat":0,"order":-1,"allergens":["应该没有"],"description":"很222香","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:47.727Z","updatedAt":"2024-04-20T09:07:29.497Z","objectId":"Dq6ApjTGkB","sn":"Dq6ApjTGkB"},{"id":99,"title":"朱古力蛋糕","weight":68,"unit":"ml","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.528Z","updatedAt":"2024-03-27T05:25:42.394Z","objectId":"nuLx9jFKZw","sn":"nuLx9jFKZw"},{"id":122,"title":"藍莓包","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.200Z","updatedAt":"2024-03-27T05:26:15.280Z","objectId":"warXjqCwS3","sn":"warXjqCwS3"}]}]},"index":"string"}],"date":"1710576000000","index":"a"}]
/// amount : 45
/// realAmount : 45
/// total : 1

MenuCart menuCartFromJson(String str) => MenuCart.fromJson(json.decode(str));
String menuCartToJson(MenuCart data) => json.encode(data.toJson());

class MenuCart {
  MenuCart({
    List<Goods>? list,
    num? amount,
    num? realAmount,
    num? total,
  }) {
    _list = list;
    _amount = amount;
    _realAmount = realAmount;
    _total = total;
  }

  MenuCart.fromJson(dynamic json) {
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(Goods.fromJson(v));
      });
    }
    _amount = json['amount'];
    _realAmount = json['realAmount'];
    _total = json['total'];
  }
  List<Goods>? _list;
  num? _amount;
  num? _realAmount;
  num? _total;

  List<Goods>? get list => _list;
  num? get amount => _amount;
  num? get realAmount => _realAmount;
  num? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    map['amount'] = _amount;
    map['realAmount'] = _realAmount;
    map['total'] = _total;
    return map;
  }
}

/// items : [{"name":"好吃的午膳套餐","amount":45,"realAmount":45,"type":"ADD","menuId":7,"menuSectionId":[12,29],"foodIds":[74,1],"cover":null,"description":null,"menu":{"id":7,"menuType":"lunch","title":"好吃的午膳套餐","price":45,"period":"daily","days":[],"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":[],"canBuy":false,"foodsWeightTable":{"0Vrzs1SGbP":100,"Dq6ApjTGkB":100,"OTUsqcCRQs":1,"ZG9AGbLDCb":1,"krY76JETEi":100,"nuLx9jFKZw":100,"pbd1A1HZjk":100,"warXjqCwS3":1},"foodsTitleTable":{"0Vrzs1SGbP":"燒汁豬扒","Dq6ApjTGkB":"螺蛳粉粉","OTUsqcCRQs":"一个食物","ZG9AGbLDCb":"蘋果","krY76JETEi":"椰菜抄肉絲","nuLx9jFKZw":"朱古力蛋糕","pbd1A1HZjk":"火腿蒸水蛋","warXjqCwS3":"藍莓包"},"foodsSunitTable":{"0Vrzs1SGbP":"g","Dq6ApjTGkB":"g","OTUsqcCRQs":"a","ZG9AGbLDCb":"a","krY76JETEi":"g","nuLx9jFKZw":"ml","pbd1A1HZjk":"g","warXjqCwS3":"a"},"dateFrom":"2024-02-29T16:00:00.000Z","dateTo":"2024-03-29T16:00:00.000Z","createdAt":"2024-03-27T06:48:27.379Z","updatedAt":"2024-03-27T06:48:27.379Z","objectId":"Ny2LfUeZeU","sn":"Ny2LfUeZeU","menuSection":[{"id":12,"title":"下午场","type":"soup","acceptEmpty":true,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:15.679Z","updatedAt":"2024-03-27T07:36:15.679Z","objectId":"BYuTQ7vZw4","sn":"BYuTQ7vZw4","foods":[{"id":74,"title":"蘋果","weight":1,"unit":"a","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/1fa72f8f139f0000afd5a6fd9fdad160d9b7b75dd044d88be8a03b091149759ba7e5a8a08f64d1be6a4b8252642aa4c6c8780a1bd3ee2ad2469eb80d060d6e5e.jpg","name":"5c2630407105dfccc4140a9c83721a55_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":1,"deleteAt":null,"createdAt":"2024-03-27T03:31:50.766Z","updatedAt":"2024-03-27T05:24:59.355Z","objectId":"ZG9AGbLDCb","sn":"ZG9AGbLDCb"},{"id":92,"title":"椰菜抄肉絲","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/6d2b38e6381f64016bd8272365f1c3c337cba968f690b3a61989e98f5d92001b3c598f85bf863f606a5d757d8fdc96561bb5d75ef9a244835897345a27e63eeb.jpg","name":"9b22ba8bdcb80ee692aeff063deaf3e5_測試圖片.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":"好","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:51.992Z","updatedAt":"2024-03-27T05:25:29.177Z","objectId":"krY76JETEi","sn":"krY76JETEi"},{"id":101,"title":"火腿蒸水蛋","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/10d7bfa5788f3393a129ca4f7746dbec57a10abae92c548606ea6c3ef97378947150b3ba6ef0c90777af02d04834869d1149895fb455568bec0ea6f08895b233.jpg","name":"52a00df8703654638ead79d43ca022f4_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.672Z","updatedAt":"2024-03-27T05:25:45.607Z","objectId":"pbd1A1HZjk","sn":"pbd1A1HZjk"},{"id":129,"title":"一个食物2","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T05:24:24.911Z","updatedAt":"2024-04-20T03:42:59.712Z","objectId":"OTUsqcCRQs","sn":"OTUsqcCRQs"}]},{"id":29,"title":"主菜","type":"main","acceptEmpty":false,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:17.190Z","updatedAt":"2024-03-27T07:36:17.190Z","objectId":"iinobE8j97","sn":"iinobE8j97","foods":[{"id":1,"title":"燒汁豬扒","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:23.197Z","updatedAt":"2024-03-27T05:23:45.510Z","objectId":"0Vrzs1SGbP","sn":"0Vrzs1SGbP"},{"id":31,"title":"螺蛳粉粉","weight":900,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/2165ca5d9ce192255cddbfa29c4868e5c128ac1e2017a71c2b5dd43dc31e53b93e38a2c46fe60747f3a8000c4e74682f5dbb9134de072076ce7d3d500736408e.jpg","name":"387519069f52c827672daf44e6766746_f0f7c582b2b7d0a247b6d6a58def76094a369acb.jpg","__type":"File"},"kcal":4,"carbohydrate":4,"protein":7,"fat":0,"order":-1,"allergens":["应该没有"],"description":"很222香","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:47.727Z","updatedAt":"2024-04-20T09:07:29.497Z","objectId":"Dq6ApjTGkB","sn":"Dq6ApjTGkB"},{"id":99,"title":"朱古力蛋糕","weight":68,"unit":"ml","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.528Z","updatedAt":"2024-03-27T05:25:42.394Z","objectId":"nuLx9jFKZw","sn":"nuLx9jFKZw"},{"id":122,"title":"藍莓包","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.200Z","updatedAt":"2024-03-27T05:26:15.280Z","objectId":"warXjqCwS3","sn":"warXjqCwS3"}]}]},"index":"string"}]
/// date : "1710576000000"
/// index : "a"

Goods listFromJson(String str) => Goods.fromJson(json.decode(str));
String listToJson(Goods data) => json.encode(data.toJson());

class Goods {
  Goods({
    List<Items>? items,
    dynamic date,
    String? index,
  }) {
    _items = items;
    _date = date;
    _index = index;
  }

  Goods.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _date = json['date'].toString();
    _index = json['index'];
  }
  List<Items>? _items;
  dynamic _date;
  String? _index;

  List<Items>? get items => _items;
  dynamic get date => _date;
  String? get index => _index;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['date'] = _date.toString();
    map['index'] = _index;
    return map;
  }
}

/// name : "好吃的午膳套餐"
/// amount : 45
/// realAmount : 45
/// type : "ADD"
/// menuId : 7
/// menuSectionId : [12,29]
/// foodIds : [74,1]
/// cover : null
/// description : null
/// menu : {"id":7,"menuType":"lunch","title":"好吃的午膳套餐","price":45,"period":"daily","days":[],"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":[],"canBuy":false,"foodsWeightTable":{"0Vrzs1SGbP":100,"Dq6ApjTGkB":100,"OTUsqcCRQs":1,"ZG9AGbLDCb":1,"krY76JETEi":100,"nuLx9jFKZw":100,"pbd1A1HZjk":100,"warXjqCwS3":1},"foodsTitleTable":{"0Vrzs1SGbP":"燒汁豬扒","Dq6ApjTGkB":"螺蛳粉粉","OTUsqcCRQs":"一个食物","ZG9AGbLDCb":"蘋果","krY76JETEi":"椰菜抄肉絲","nuLx9jFKZw":"朱古力蛋糕","pbd1A1HZjk":"火腿蒸水蛋","warXjqCwS3":"藍莓包"},"foodsSunitTable":{"0Vrzs1SGbP":"g","Dq6ApjTGkB":"g","OTUsqcCRQs":"a","ZG9AGbLDCb":"a","krY76JETEi":"g","nuLx9jFKZw":"ml","pbd1A1HZjk":"g","warXjqCwS3":"a"},"dateFrom":"2024-02-29T16:00:00.000Z","dateTo":"2024-03-29T16:00:00.000Z","createdAt":"2024-03-27T06:48:27.379Z","updatedAt":"2024-03-27T06:48:27.379Z","objectId":"Ny2LfUeZeU","sn":"Ny2LfUeZeU","menuSection":[{"id":12,"title":"下午场","type":"soup","acceptEmpty":true,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:15.679Z","updatedAt":"2024-03-27T07:36:15.679Z","objectId":"BYuTQ7vZw4","sn":"BYuTQ7vZw4","foods":[{"id":74,"title":"蘋果","weight":1,"unit":"a","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/1fa72f8f139f0000afd5a6fd9fdad160d9b7b75dd044d88be8a03b091149759ba7e5a8a08f64d1be6a4b8252642aa4c6c8780a1bd3ee2ad2469eb80d060d6e5e.jpg","name":"5c2630407105dfccc4140a9c83721a55_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":1,"deleteAt":null,"createdAt":"2024-03-27T03:31:50.766Z","updatedAt":"2024-03-27T05:24:59.355Z","objectId":"ZG9AGbLDCb","sn":"ZG9AGbLDCb"},{"id":92,"title":"椰菜抄肉絲","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/6d2b38e6381f64016bd8272365f1c3c337cba968f690b3a61989e98f5d92001b3c598f85bf863f606a5d757d8fdc96561bb5d75ef9a244835897345a27e63eeb.jpg","name":"9b22ba8bdcb80ee692aeff063deaf3e5_測試圖片.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":"好","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:51.992Z","updatedAt":"2024-03-27T05:25:29.177Z","objectId":"krY76JETEi","sn":"krY76JETEi"},{"id":101,"title":"火腿蒸水蛋","weight":100,"unit":"g","cover":{"url":"https://storage.dev.macauscholar.com:20443/scholar/macauscholar_dev/10d7bfa5788f3393a129ca4f7746dbec57a10abae92c548606ea6c3ef97378947150b3ba6ef0c90777af02d04834869d1149895fb455568bec0ea6f08895b233.jpg","name":"52a00df8703654638ead79d43ca022f4_5eac9f8d4ce0d840b30fd8273f4f2a1452192eb89b709fb947ab2239414b71f803c91b26955acee1a17593918395b96bc6831a8f9693be701f02d3744e1fe39a.jpg","__type":"File"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.672Z","updatedAt":"2024-03-27T05:25:45.607Z","objectId":"pbd1A1HZjk","sn":"pbd1A1HZjk"},{"id":129,"title":"一个食物2","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T05:24:24.911Z","updatedAt":"2024-04-20T03:42:59.712Z","objectId":"OTUsqcCRQs","sn":"OTUsqcCRQs"}]},{"id":29,"title":"主菜","type":"main","acceptEmpty":false,"acceptMultiple":false,"menuId":7,"deleteAt":null,"createdAt":"2024-03-27T07:36:17.190Z","updatedAt":"2024-03-27T07:36:17.190Z","objectId":"iinobE8j97","sn":"iinobE8j97","foods":[{"id":1,"title":"燒汁豬扒","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:23.197Z","updatedAt":"2024-03-27T05:23:45.510Z","objectId":"0Vrzs1SGbP","sn":"0Vrzs1SGbP"},{"id":31,"title":"螺蛳粉粉","weight":900,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/2165ca5d9ce192255cddbfa29c4868e5c128ac1e2017a71c2b5dd43dc31e53b93e38a2c46fe60747f3a8000c4e74682f5dbb9134de072076ce7d3d500736408e.jpg","name":"387519069f52c827672daf44e6766746_f0f7c582b2b7d0a247b6d6a58def76094a369acb.jpg","__type":"File"},"kcal":4,"carbohydrate":4,"protein":7,"fat":0,"order":-1,"allergens":["应该没有"],"description":"很222香","groupId":5,"deleteAt":null,"createdAt":"2024-03-27T03:31:47.727Z","updatedAt":"2024-04-20T09:07:29.497Z","objectId":"Dq6ApjTGkB","sn":"Dq6ApjTGkB"},{"id":99,"title":"朱古力蛋糕","weight":68,"unit":"ml","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:52.528Z","updatedAt":"2024-03-27T05:25:42.394Z","objectId":"nuLx9jFKZw","sn":"nuLx9jFKZw"},{"id":122,"title":"藍莓包","weight":1,"unit":"a","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":9,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.200Z","updatedAt":"2024-03-27T05:26:15.280Z","objectId":"warXjqCwS3","sn":"warXjqCwS3"}]}]}
/// index : "string"

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));
String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    String? name,
    num? amount,
    num? realAmount,
    String? type,
    num? menuId,
    List<num>? menuSectionId,
    List<num>? foodIds,
    FileItem? cover,
    dynamic description,
    Menu? menu,
    String? index,
  }) {
    _name = name;
    _amount = amount;
    _realAmount = realAmount;
    _type = type;
    _menuId = menuId;
    _menuSectionId = menuSectionId;
    _foodIds = foodIds;
    _cover = cover;
    _description = description;
    _menu = menu;
    _index = index;
  }

  Items.fromJson(dynamic json) {
    _name = json['name'];
    _amount = json['amount'];
    _realAmount = json['realAmount'];
    _type = json['type'];
    _menuId = json['menuId'];
    _menuSectionId =
        json['menuSectionId'] != null ? json['menuSectionId'].cast<num>() : [];
    _foodIds = json['foodIds'] != null ? json['foodIds'].cast<num>() : [];
    _cover = json['cover'] != null ? FileItem.fromJson(json['cover']) : null;
    _description = json['description'];
    _menu = json['menu'] != null ? Menu.fromJson(json['menu']) : null;
    _index = json['index'];
  }
  String? _name;
  num? _amount;
  num? _realAmount;
  String? _type;
  num? _menuId;
  List<num>? _menuSectionId;
  List<num>? _foodIds;
  FileItem? _cover;
  dynamic _description;
  Menu? _menu;
  String? _index;

  String? get name => _name;
  num? get amount => _amount;
  num? get realAmount => _realAmount;
  String? get type => _type;
  num? get menuId => _menuId;
  List<num>? get menuSectionId => _menuSectionId;
  List<num>? get foodIds => _foodIds;
  FileItem? get cover => _cover;
  dynamic get description => _description;
  Menu? get menu => _menu;
  String? get index => _index;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['amount'] = _amount;
    map['realAmount'] = _realAmount;
    map['type'] = _type;
    map['menuId'] = _menuId;
    map['menuSectionId'] = _menuSectionId;
    map['foodIds'] = _foodIds;
    map['cover'] = _cover?.toJson();
    map['description'] = _description;
    if (_menu != null) {
      map['menu'] = _menu?.toJson();
    }
    map['index'] = _index;
    return map;
  }
}

/// id : 7
/// menuType : "lunch"
/// title : "好吃的午膳套餐"
/// price : 45
/// period : "daily"
/// days : []
/// package : false
/// cover : null
/// description : null
/// withArea : null
/// withBranches : null
/// withoutBranches : []
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

Menu menuFromJson(String str) => Menu.fromJson(json.decode(str));
String menuToJson(Menu data) => json.encode(data.toJson());

class Menu {
  Menu({
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

  Menu.fromJson(dynamic json) {
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
  List<dynamic>? _days;
  bool? _package;
  dynamic _cover;
  dynamic _description;
  dynamic _withArea;
  dynamic _withBranches;
  List<dynamic>? _withoutBranches;
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
  List<dynamic>? get days => _days;
  bool? get package => _package;
  dynamic get cover => _cover;
  dynamic get description => _description;
  dynamic get withArea => _withArea;
  dynamic get withBranches => _withBranches;
  List<dynamic>? get withoutBranches => _withoutBranches;
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
    if (_days != null) {
      map['days'] = _days?.map((v) => v.toJson()).toList();
    }
    map['package'] = _package;
    map['cover'] = _cover;
    map['description'] = _description;
    map['withArea'] = _withArea;
    map['withBranches'] = _withBranches;
    if (_withoutBranches != null) {
      map['withoutBranches'] =
          _withoutBranches?.map((v) => v.toJson()).toList();
    }
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

/// 0Vrzs1SGbP : "g"
/// Dq6ApjTGkB : "g"
/// OTUsqcCRQs : "a"
/// ZG9AGbLDCb : "a"
/// krY76JETEi : "g"
/// nuLx9jFKZw : "ml"
/// pbd1A1HZjk : "g"
/// warXjqCwS3 : "a"

FoodsSunitTable foodsSunitTableFromJson(String str) =>
    FoodsSunitTable.fromJson(json.decode(str));
String foodsSunitTableToJson(FoodsSunitTable data) =>
    json.encode(data.toJson());

class FoodsSunitTable {
  FoodsSunitTable({
    String? Vrzs1SGbP,
    String? dq6ApjTGkB,
    String? oTUsqcCRQs,
    String? zG9AGbLDCb,
    String? krY76JETEi,
    String? nuLx9jFKZw,
    String? pbd1A1HZjk,
    String? warXjqCwS3,
  }) {
    _Vrzs1SGbP = Vrzs1SGbP;
    _dq6ApjTGkB = dq6ApjTGkB;
    _oTUsqcCRQs = oTUsqcCRQs;
    _zG9AGbLDCb = zG9AGbLDCb;
    _krY76JETEi = krY76JETEi;
    _nuLx9jFKZw = nuLx9jFKZw;
    _pbd1A1HZjk = pbd1A1HZjk;
    _warXjqCwS3 = warXjqCwS3;
  }

  FoodsSunitTable.fromJson(dynamic json) {
    _Vrzs1SGbP = json['0Vrzs1SGbP'];
    _dq6ApjTGkB = json['Dq6ApjTGkB'];
    _oTUsqcCRQs = json['OTUsqcCRQs'];
    _zG9AGbLDCb = json['ZG9AGbLDCb'];
    _krY76JETEi = json['krY76JETEi'];
    _nuLx9jFKZw = json['nuLx9jFKZw'];
    _pbd1A1HZjk = json['pbd1A1HZjk'];
    _warXjqCwS3 = json['warXjqCwS3'];
  }
  String? _Vrzs1SGbP;
  String? _dq6ApjTGkB;
  String? _oTUsqcCRQs;
  String? _zG9AGbLDCb;
  String? _krY76JETEi;
  String? _nuLx9jFKZw;
  String? _pbd1A1HZjk;
  String? _warXjqCwS3;

  String? get Vrzs1SGbP => _Vrzs1SGbP;
  String? get dq6ApjTGkB => _dq6ApjTGkB;
  String? get oTUsqcCRQs => _oTUsqcCRQs;
  String? get zG9AGbLDCb => _zG9AGbLDCb;
  String? get krY76JETEi => _krY76JETEi;
  String? get nuLx9jFKZw => _nuLx9jFKZw;
  String? get pbd1A1HZjk => _pbd1A1HZjk;
  String? get warXjqCwS3 => _warXjqCwS3;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['0Vrzs1SGbP'] = _Vrzs1SGbP;
    map['Dq6ApjTGkB'] = _dq6ApjTGkB;
    map['OTUsqcCRQs'] = _oTUsqcCRQs;
    map['ZG9AGbLDCb'] = _zG9AGbLDCb;
    map['krY76JETEi'] = _krY76JETEi;
    map['nuLx9jFKZw'] = _nuLx9jFKZw;
    map['pbd1A1HZjk'] = _pbd1A1HZjk;
    map['warXjqCwS3'] = _warXjqCwS3;
    return map;
  }
}

/// 0Vrzs1SGbP : "燒汁豬扒"
/// Dq6ApjTGkB : "螺蛳粉粉"
/// OTUsqcCRQs : "一个食物"
/// ZG9AGbLDCb : "蘋果"
/// krY76JETEi : "椰菜抄肉絲"
/// nuLx9jFKZw : "朱古力蛋糕"
/// pbd1A1HZjk : "火腿蒸水蛋"
/// warXjqCwS3 : "藍莓包"

FoodsTitleTable foodsTitleTableFromJson(String str) =>
    FoodsTitleTable.fromJson(json.decode(str));
String foodsTitleTableToJson(FoodsTitleTable data) =>
    json.encode(data.toJson());

class FoodsTitleTable {
  FoodsTitleTable({
    String? Vrzs1SGbP,
    String? dq6ApjTGkB,
    String? oTUsqcCRQs,
    String? zG9AGbLDCb,
    String? krY76JETEi,
    String? nuLx9jFKZw,
    String? pbd1A1HZjk,
    String? warXjqCwS3,
  }) {
    _Vrzs1SGbP = Vrzs1SGbP;
    _dq6ApjTGkB = dq6ApjTGkB;
    _oTUsqcCRQs = oTUsqcCRQs;
    _zG9AGbLDCb = zG9AGbLDCb;
    _krY76JETEi = krY76JETEi;
    _nuLx9jFKZw = nuLx9jFKZw;
    _pbd1A1HZjk = pbd1A1HZjk;
    _warXjqCwS3 = warXjqCwS3;
  }

  FoodsTitleTable.fromJson(dynamic json) {
    _Vrzs1SGbP = json['0Vrzs1SGbP'];
    _dq6ApjTGkB = json['Dq6ApjTGkB'];
    _oTUsqcCRQs = json['OTUsqcCRQs'];
    _zG9AGbLDCb = json['ZG9AGbLDCb'];
    _krY76JETEi = json['krY76JETEi'];
    _nuLx9jFKZw = json['nuLx9jFKZw'];
    _pbd1A1HZjk = json['pbd1A1HZjk'];
    _warXjqCwS3 = json['warXjqCwS3'];
  }
  String? _Vrzs1SGbP;
  String? _dq6ApjTGkB;
  String? _oTUsqcCRQs;
  String? _zG9AGbLDCb;
  String? _krY76JETEi;
  String? _nuLx9jFKZw;
  String? _pbd1A1HZjk;
  String? _warXjqCwS3;

  String? get Vrzs1SGbP => _Vrzs1SGbP;
  String? get dq6ApjTGkB => _dq6ApjTGkB;
  String? get oTUsqcCRQs => _oTUsqcCRQs;
  String? get zG9AGbLDCb => _zG9AGbLDCb;
  String? get krY76JETEi => _krY76JETEi;
  String? get nuLx9jFKZw => _nuLx9jFKZw;
  String? get pbd1A1HZjk => _pbd1A1HZjk;
  String? get warXjqCwS3 => _warXjqCwS3;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['0Vrzs1SGbP'] = _Vrzs1SGbP;
    map['Dq6ApjTGkB'] = _dq6ApjTGkB;
    map['OTUsqcCRQs'] = _oTUsqcCRQs;
    map['ZG9AGbLDCb'] = _zG9AGbLDCb;
    map['krY76JETEi'] = _krY76JETEi;
    map['nuLx9jFKZw'] = _nuLx9jFKZw;
    map['pbd1A1HZjk'] = _pbd1A1HZjk;
    map['warXjqCwS3'] = _warXjqCwS3;
    return map;
  }
}

/// 0Vrzs1SGbP : 100
/// Dq6ApjTGkB : 100
/// OTUsqcCRQs : 1
/// ZG9AGbLDCb : 1
/// krY76JETEi : 100
/// nuLx9jFKZw : 100
/// pbd1A1HZjk : 100
/// warXjqCwS3 : 1

FoodsWeightTable foodsWeightTableFromJson(String str) =>
    FoodsWeightTable.fromJson(json.decode(str));
String foodsWeightTableToJson(FoodsWeightTable data) =>
    json.encode(data.toJson());

class FoodsWeightTable {
  FoodsWeightTable({
    num? Vrzs1SGbP,
    num? dq6ApjTGkB,
    num? oTUsqcCRQs,
    num? zG9AGbLDCb,
    num? krY76JETEi,
    num? nuLx9jFKZw,
    num? pbd1A1HZjk,
    num? warXjqCwS3,
  }) {
    _Vrzs1SGbP = Vrzs1SGbP;
    _dq6ApjTGkB = dq6ApjTGkB;
    _oTUsqcCRQs = oTUsqcCRQs;
    _zG9AGbLDCb = zG9AGbLDCb;
    _krY76JETEi = krY76JETEi;
    _nuLx9jFKZw = nuLx9jFKZw;
    _pbd1A1HZjk = pbd1A1HZjk;
    _warXjqCwS3 = warXjqCwS3;
  }

  FoodsWeightTable.fromJson(dynamic json) {
    _Vrzs1SGbP = json['0Vrzs1SGbP'];
    _dq6ApjTGkB = json['Dq6ApjTGkB'];
    _oTUsqcCRQs = json['OTUsqcCRQs'];
    _zG9AGbLDCb = json['ZG9AGbLDCb'];
    _krY76JETEi = json['krY76JETEi'];
    _nuLx9jFKZw = json['nuLx9jFKZw'];
    _pbd1A1HZjk = json['pbd1A1HZjk'];
    _warXjqCwS3 = json['warXjqCwS3'];
  }
  num? _Vrzs1SGbP;
  num? _dq6ApjTGkB;
  num? _oTUsqcCRQs;
  num? _zG9AGbLDCb;
  num? _krY76JETEi;
  num? _nuLx9jFKZw;
  num? _pbd1A1HZjk;
  num? _warXjqCwS3;

  num? get Vrzs1SGbP => _Vrzs1SGbP;
  num? get dq6ApjTGkB => _dq6ApjTGkB;
  num? get oTUsqcCRQs => _oTUsqcCRQs;
  num? get zG9AGbLDCb => _zG9AGbLDCb;
  num? get krY76JETEi => _krY76JETEi;
  num? get nuLx9jFKZw => _nuLx9jFKZw;
  num? get pbd1A1HZjk => _pbd1A1HZjk;
  num? get warXjqCwS3 => _warXjqCwS3;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['0Vrzs1SGbP'] = _Vrzs1SGbP;
    map['Dq6ApjTGkB'] = _dq6ApjTGkB;
    map['OTUsqcCRQs'] = _oTUsqcCRQs;
    map['ZG9AGbLDCb'] = _zG9AGbLDCb;
    map['krY76JETEi'] = _krY76JETEi;
    map['nuLx9jFKZw'] = _nuLx9jFKZw;
    map['pbd1A1HZjk'] = _pbd1A1HZjk;
    map['warXjqCwS3'] = _warXjqCwS3;
    return map;
  }
}
