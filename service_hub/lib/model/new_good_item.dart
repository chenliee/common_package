import 'dart:convert';

import 'package:service_hub/model/good_item.dart';

/// id : 554
/// projectId : 5
/// parentId : null
/// path : null
/// name : "1707207635159761622"
/// title : "酒"
/// index : 0
/// data : [{"id":8137,"merchantId":4,"uid":"238505737886347931","name":"金車-柏克金(三月啤酒)","barcode":"4710085231997","desc":"","links":{"pospal":["238505737886347931"]},"infos":{"sell_price":{"title":"零售價","multiple":false,"value":770},"instock":{"title":"是否銷售","multiple":false,"value":true}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":3139,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/20fb8e7519a0525429c1f9e1fe0427ae99712320d0f8f82db45896fc11a98295_cdc1edbc-4590-46d7-a9b9-6d648bde8a52.png","mime":"image/png","name":"cdc1edbc-4590-46d7-a9b9-6d648bde8a52.png","size":"255131","hash":"20fb8e7519a0525429c1f9e1fe0427ae99712320d0f8f82db45896fc11a98295"}}}},{"id":8139,"merchantId":4,"uid":"270820848882354765","name":"金車-柏克金（黃金拉格啤酒）330ml","barcode":"4710085229543","desc":"","links":{"pospal":["270820848882354765"]},"infos":{"sell_price":{"title":"零售價","multiple":false,"value":770}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":3141,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/622d0b9703cafc22c5d1740df60f883cb0d29542a9a5daac8a75598713eca31e_a52ede79-8374-48aa-831a-d12c05309232.png","mime":"image/png","name":"a52ede79-8374-48aa-831a-d12c05309232.png","size":"316645","hash":"622d0b9703cafc22c5d1740df60f883cb0d29542a9a5daac8a75598713eca31e"}}}},{"id":8141,"merchantId":4,"uid":"274795331049641644","name":"青島啤酒（高綠罐）500ml","barcode":"6901035603232","desc":"","links":{"pospal":["274795331049641644"]},"infos":{"sell_price":{"title":"零售價","multiple":false,"value":840}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":3143,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/c75dcb2b89a93dcb847650f53fc5883eaf3c93f5138d0a2824d1f9de93369cff_53deadf0-3011-432d-bf76-fdfd5058950e.png","mime":"image/png","name":"53deadf0-3011-432d-bf76-fdfd5058950e.png","size":"90700","hash":"c75dcb2b89a93dcb847650f53fc5883eaf3c93f5138d0a2824d1f9de93369cff"}}}},{"id":8142,"merchantId":4,"uid":"179824613210170717","name":"Asahi朝日 啤酒 330ml(罐裝)","barcode":"4901004021076","desc":"5651","links":{"pospal":["179824613210170717"]},"infos":{"sell_price":{"title":"零售價","multiple":false,"value":780}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":3144,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/e48e8f81bf649f79506d7ff093cf6e6e0028844437f9950ee91944c33fa1c522_6fc1db63-d95f-43d1-9be6-3793bd9561bf.png","mime":"image/png","name":"6fc1db63-d95f-43d1-9be6-3793bd9561bf.png","size":"195439","hash":"e48e8f81bf649f79506d7ff093cf6e6e0028844437f9950ee91944c33fa1c522"}}}},{"id":8143,"merchantId":4,"uid":"222873127631055741","name":"Asahi朝日 啤酒 330ml(樽裝)","barcode":"4901004002457","desc":"","links":{"pospal":["222873127631055741"]},"infos":{"sell_price":{"title":"零售價","multiple":false,"value":1230},"instock":{"title":"是否銷售","multiple":false,"value":true}},"files":{"cover":{"title":"封面","multiple":false,"desc":"商品、分類的封面","value":{"id":3145,"url":"https://storage.dev.heyday-catering.com:20443/saas-service/public/c6080dcc44a14817a83a48d16cb2cabed0c03c7865c97f2f0aa02b08185a5251_d76c95bb-c711-48e4-a23b-639415178254.png","mime":"image/png","name":"d76c95bb-c711-48e4-a23b-639415178254.png","size":"339392","hash":"c6080dcc44a14817a83a48d16cb2cabed0c03c7865c97f2f0aa02b08185a5251"}}}}]

NewGoodItem newGoodItemFromJson(String str) =>
    NewGoodItem.fromJson(json.decode(str));
String newGoodItemToJson(NewGoodItem data) => json.encode(data.toJson());

class NewGoodItem {
  NewGoodItem({
    num? id,
    num? projectId,
    dynamic parentId,
    dynamic path,
    String? name,
    String? title,
    num? index,
    List<GoodItem>? data,
  }) {
    _id = id;
    _projectId = projectId;
    _parentId = parentId;
    _path = path;
    _name = name;
    _title = title;
    _index = index;
    _data = data;
  }

  NewGoodItem.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _parentId = json['parentId'];
    _path = json['path'];
    _name = json['name'];
    _title = json['title'];
    _index = json['index'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(GoodItem.fromJson(v));
      });
    }
  }
  num? _id;
  num? _projectId;
  dynamic _parentId;
  dynamic _path;
  String? _name;
  String? _title;
  num? _index;
  List<GoodItem>? _data;
  NewGoodItem copyWith({
    num? id,
    num? projectId,
    dynamic parentId,
    dynamic path,
    String? name,
    String? title,
    num? index,
    List<GoodItem>? data,
  }) =>
      NewGoodItem(
        id: id ?? _id,
        projectId: projectId ?? _projectId,
        parentId: parentId ?? _parentId,
        path: path ?? _path,
        name: name ?? _name,
        title: title ?? _title,
        index: index ?? _index,
        data: data ?? _data,
      );
  num? get id => _id;
  num? get projectId => _projectId;
  dynamic get parentId => _parentId;
  dynamic get path => _path;
  String? get name => _name;
  String? get title => _title;
  num? get index => _index;
  List<GoodItem>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['parentId'] = _parentId;
    map['path'] = _path;
    map['name'] = _name;
    map['title'] = _title;
    map['index'] = _index;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
