import 'dart:convert';

import 'package:macauscholar/model/service_item.dart';

/// id : 15
/// packageId : 5
/// title : "测试1"
/// acceptEmpty : false
/// multiple : false
/// mongoDBId : null
/// order : 0
/// createdAt : "2024-06-12T03:41:04.121Z"
/// updatedAt : "2024-06-15T08:33:23.112Z"
/// deletedAt : null
/// service : [{"id":590,"title":"K3補習費","packageId":null,"price":1800,"common":false,"code":"TUIFEE00K3","categoryId":17,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K3","value":1800}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:40:50.394Z","deletedAt":null,"mongoDBId":"qge6V53arf"},{"id":611,"title":"0125","packageId":null,"price":1,"common":false,"code":"1wEKrwZuv5:00100","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2022-10-13T10:05:19.089Z","updatedAt":"2024-06-04T02:41:34.540Z","deletedAt":null,"mongoDBId":"tH3xM2qLZ0"},{"id":624,"title":"K2補習費","packageId":null,"price":1720,"common":false,"code":"TUIFEE00K2","categoryId":17,"order":1,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K2","value":1720}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:41:55.380Z","deletedAt":null,"mongoDBId":"ucZtViNUuE"}]

SectionItem sectionItemFromJson(String str) =>
    SectionItem.fromJson(json.decode(str));
String sectionItemToJson(SectionItem data) => json.encode(data.toJson());

class SectionItem {
  SectionItem({
    num? id,
    num? packageId,
    String? title,
    bool? acceptEmpty,
    bool? multiple,
    dynamic mongoDBId,
    num? order,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<ServiceItem>? service,
  }) {
    _id = id;
    _packageId = packageId;
    _title = title;
    _acceptEmpty = acceptEmpty;
    _multiple = multiple;
    _mongoDBId = mongoDBId;
    _order = order;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _service = service;
  }

  SectionItem.fromJson(dynamic json) {
    _id = json['id'];
    _packageId = json['packageId'];
    _title = json['title'];
    _acceptEmpty = json['acceptEmpty'];
    _multiple = json['multiple'];
    _mongoDBId = json['mongoDBId'];
    _order = json['order'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    if (json['service'] != null) {
      _service = [];
      json['service'].forEach((v) {
        _service?.add(ServiceItem.fromJson(v));
      });
    }
  }
  num? _id;
  num? _packageId;
  String? _title;
  bool? _acceptEmpty;
  bool? _multiple;
  dynamic _mongoDBId;
  num? _order;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  List<ServiceItem>? _service;
  SectionItem copyWith({
    num? id,
    num? packageId,
    String? title,
    bool? acceptEmpty,
    bool? multiple,
    dynamic mongoDBId,
    num? order,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<ServiceItem>? service,
  }) =>
      SectionItem(
        id: id ?? _id,
        packageId: packageId ?? _packageId,
        title: title ?? _title,
        acceptEmpty: acceptEmpty ?? _acceptEmpty,
        multiple: multiple ?? _multiple,
        mongoDBId: mongoDBId ?? _mongoDBId,
        order: order ?? _order,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        service: service ?? _service,
      );
  num? get id => _id;
  num? get packageId => _packageId;
  String? get title => _title;
  bool? get acceptEmpty => _acceptEmpty;
  bool? get multiple => _multiple;
  dynamic get mongoDBId => _mongoDBId;
  num? get order => _order;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  List<ServiceItem>? get service => _service;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['packageId'] = _packageId;
    map['title'] = _title;
    map['acceptEmpty'] = _acceptEmpty;
    map['multiple'] = _multiple;
    map['mongoDBId'] = _mongoDBId;
    map['order'] = _order;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    if (_service != null) {
      map['service'] = _service?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
