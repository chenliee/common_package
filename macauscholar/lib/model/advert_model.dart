import 'dart:convert';

import 'package:article/model/article_item.dart';
import 'package:crop/models/place_item.dart';
import 'package:gold/model/position_item.dart';

/// placeAdvert : [{"id":116746,"bid":292385,"shopId":"1","adInfo":{"link":"1","cover":"https://storage.dev.heyday-catering.com:20443/saas-gold/public/2344246ef89d49295af0019802109cd76bea8049ef0c48012e2fd511fdcde4a5_h_img.png"}}]
/// placeAdvertDetail : [{"id":1031,"title":"匯智補習廣告圖","suTitle":null,"code":"app-berkshire","body":null,"langId":3,"id_old":null,"publishedAt":"2024-05-27T16:00:00.000Z","template":null,"date":null,"description":null,"createdAt":"2024-05-28T08:51:50.686Z","old_createdAt":null,"coverId":1050,"merchantId":1,"categoryId":null,"cover":{"id":1050,"provider":"default","merchantId":1,"name":"advert.png","hash":"60c34d82785dfabf14e29cd7079df9ff7736f740d906468dc94777bd8b137950","ext":".png","mime":"image/png","size":"118803","path":"60c34d82785dfabf14e29cd7079df9ff7736f740d906468dc94777bd8b137950_advert.png","upload":{"etag":"2bb0dabc9767b23cd764805d4d5e1f6d","versionId":null},"createdAt":"2024-05-28T08:51:50.492Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/60c34d82785dfabf14e29cd7079df9ff7736f740d906468dc94777bd8b137950_advert.png"},"merchant":{"id":1,"code":"scholar","title":"儒林教育","createdAt":"2023-12-21T05:58:03.597Z"}}]

AdvertModel advertModelFromJson(String str) =>
    AdvertModel.fromJson(json.decode(str));
String advertModelToJson(AdvertModel data) => json.encode(data.toJson());

class AdvertModel {
  AdvertModel({
    List<PositionItem>? placeAdvert,
    ArticleItem? placeAdvertDetail,
    List<PlaceItem>? placeItem,
  }) {
    _placeAdvert = placeAdvert;
    _placeAdvertDetail = placeAdvertDetail;
    _placeItem = placeItem;
  }

  AdvertModel.fromJson(dynamic json) {
    if (json['placeAdvert'] != null) {
      _placeAdvert = [];
      json['placeAdvert'].forEach((v) {
        _placeAdvert?.add(PositionItem.fromJson(v));
      });
    }
    if (json['placeAdvertDetail'] != null) {
      _placeAdvertDetail = ArticleItem.fromJson(json['placeAdvertDetail']);
    }
    if (json['brandList'] != null) {
      _placeItem = [];
      json['brandList'].forEach((v) {
        _placeItem?.add(PlaceItem.fromJson(v));
      });
    }
  }

  List<PositionItem>? _placeAdvert;
  ArticleItem? _placeAdvertDetail;
  List<PlaceItem>? _placeItem;
  AdvertModel copyWith({
    List<PositionItem>? placeAdvert,
    ArticleItem? placeAdvertDetail,
    List<PlaceItem>? placeItem,
  }) =>
      AdvertModel(
          placeAdvert: placeAdvert ?? _placeAdvert,
          placeAdvertDetail: placeAdvertDetail ?? _placeAdvertDetail,
          placeItem: placeItem ?? _placeItem);
  List<PositionItem>? get placeAdvert => _placeAdvert;
  ArticleItem? get placeAdvertDetail => _placeAdvertDetail;
  List<PlaceItem>? get placeItem => _placeItem;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_placeAdvert != null) {
      map['placeAdvert'] = _placeAdvert?.map((v) => v.toJson()).toList();
    }
    if (_placeAdvertDetail != null) {
      map['placeAdvertDetail'] = _placeAdvertDetail?.toJson();
    }
    if (_placeAdvertDetail != null) {
      map['placeItem'] = _placeItem?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
