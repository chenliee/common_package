import 'dart:convert';

import 'package:storage/model/catalog_item.dart';

/// catalogsWithFiles : [{"id":42,"projectId":1,"name":"如何可以清楚表達","description":"string","code":"video_a","order":0,"config":{"path":[0],"prefix":"如何可以清楚表達/"},"createdAt":"2024-07-13T01:14:31.436Z","updatedAt":"2024-07-13T01:14:31.436Z","deletedAt":null,"fileItems":[{"name":"自信表达的三项元素.mov","id":381,"path":"","url":"","size":"","mime":"","hash":""}]},{"id":43,"projectId":1,"name":"如何可以動聽演繹","description":"string","code":"video_b","order":1,"config":{"path":[0],"prefix":"如何可以動聽演繹/"},"createdAt":"2024-07-13T01:16:39.779Z","updatedAt":"2024-07-13T01:16:39.779Z","deletedAt":null,"fileItems":[{"name":"控制音量大戏有方法.mov","id":382,"path":"","url":"","size":"","mime":"","hash":""}]}]
/// hasBuy : true

VideoCourseModel videoCourseModelFromJson(String str) =>
    VideoCourseModel.fromJson(json.decode(str));
String videoCourseModelToJson(VideoCourseModel data) =>
    json.encode(data.toJson());

class VideoCourseModel {
  VideoCourseModel({
    List<CatalogItem>? catalogsWithFiles,
    bool? hadBuy,
  }) {
    _catalogsWithFiles = catalogsWithFiles;
    _hadBuy = hadBuy;
  }

  VideoCourseModel.fromJson(dynamic json) {
    if (json['catalogsWithFiles'] != null) {
      _catalogsWithFiles = [];
      json['catalogsWithFiles'].forEach((v) {
        _catalogsWithFiles?.add(CatalogItem.fromJson(v));
      });
    }
    _hadBuy = json['hadBuy'];
  }
  List<CatalogItem>? _catalogsWithFiles;
  bool? _hadBuy;
  VideoCourseModel copyWith({
    List<CatalogItem>? catalogsWithFiles,
    bool? hadBuy,
  }) =>
      VideoCourseModel(
        catalogsWithFiles: catalogsWithFiles ?? _catalogsWithFiles,
        hadBuy: hadBuy ?? _hadBuy,
      );
  List<CatalogItem>? get catalogsWithFiles => _catalogsWithFiles;
  bool? get hadBuy => _hadBuy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_catalogsWithFiles != null) {
      map['catalogsWithFiles'] =
          _catalogsWithFiles?.map((v) => v.toJson()).toList();
    }
    map['hadBuy'] = _hadBuy;
    return map;
  }
}
