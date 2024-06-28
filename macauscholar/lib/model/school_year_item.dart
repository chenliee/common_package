import 'dart:convert';

import 'package:macauscholar/model/service_item.dart';

/// id : 23
/// code : "k2"
/// type : "nursery"
/// order : 0
/// displayName : "K2"
/// createdAt : "2021-11-19T10:35:53.799Z"
/// updatedAt : "2024-05-17T05:07:28.956Z"
/// deletedAt : null
/// mongoDBId : "wvWZyIGkLe"
/// nextYear : [{"id":4,"code":"k3","type":"nursery","order":0,"displayName":"K3","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-05-10T09:37:30.211Z","deletedAt":null,"mongoDBId":"FHwQyBBCF6"}]
/// service : [{"id":624,"title":"K2補習費","packageId":null,"price":1720,"common":false,"code":"TUIFEE00K2","categoryId":17,"order":1,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K2","value":1720}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:41:55.380Z","deletedAt":null,"mongoDBId":"ucZtViNUuE"}]

SchoolYearItem schoolYearItemFromJson(String str) =>
    SchoolYearItem.fromJson(json.decode(str));
String schoolYearItemToJson(SchoolYearItem data) => json.encode(data.toJson());

class SchoolYearItem {
  SchoolYearItem({
    num? id,
    String? code,
    String? type,
    num? order,
    String? displayName,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    String? mongoDBId,
    List<NextYear>? nextYear,
    List<ServiceItem>? service,
  }) {
    _id = id;
    _code = code;
    _type = type;
    _order = order;
    _displayName = displayName;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _mongoDBId = mongoDBId;
    _nextYear = nextYear;
    _service = service;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchoolYearItem &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _code == other._code;

  @override
  int get hashCode => _id.hashCode ^ _code.hashCode;

  SchoolYearItem.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _type = json['type'];
    _order = json['order'];
    _displayName = json['displayName'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _mongoDBId = json['mongoDBId'];
    if (json['nextYear'] != null) {
      _nextYear = [];
      json['nextYear'].forEach((v) {
        _nextYear?.add(NextYear.fromJson(v));
      });
    }
    if (json['service'] != null) {
      _service = [];
      json['service'].forEach((v) {
        _service?.add(ServiceItem.fromJson(v));
      });
    }
  }
  num? _id;
  String? _code;
  String? _type;
  num? _order;
  String? _displayName;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _mongoDBId;
  List<NextYear>? _nextYear;
  List<ServiceItem>? _service;
  SchoolYearItem copyWith({
    num? id,
    String? code,
    String? type,
    num? order,
    String? displayName,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    String? mongoDBId,
    List<NextYear>? nextYear,
    List<ServiceItem>? service,
  }) =>
      SchoolYearItem(
        id: id ?? _id,
        code: code ?? _code,
        type: type ?? _type,
        order: order ?? _order,
        displayName: displayName ?? _displayName,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        mongoDBId: mongoDBId ?? _mongoDBId,
        nextYear: nextYear ?? _nextYear,
        service: service ?? _service,
      );
  num? get id => _id;
  String? get code => _code;
  String? get type => _type;
  num? get order => _order;
  String? get displayName => _displayName;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get mongoDBId => _mongoDBId;
  List<NextYear>? get nextYear => _nextYear;
  List<ServiceItem>? get service => _service;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['type'] = _type;
    map['order'] = _order;
    map['displayName'] = _displayName;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['mongoDBId'] = _mongoDBId;
    if (_nextYear != null) {
      map['nextYear'] = _nextYear?.map((v) => v.toJson()).toList();
    }
    if (_service != null) {
      map['service'] = _service?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 4
/// code : "k3"
/// type : "nursery"
/// order : 0
/// displayName : "K3"
/// createdAt : "2021-11-19T10:35:53.799Z"
/// updatedAt : "2024-05-10T09:37:30.211Z"
/// deletedAt : null
/// mongoDBId : "FHwQyBBCF6"

NextYear nextYearFromJson(String str) => NextYear.fromJson(json.decode(str));
String nextYearToJson(NextYear data) => json.encode(data.toJson());

class NextYear {
  NextYear({
    num? id,
    String? code,
    String? type,
    num? order,
    String? displayName,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    String? mongoDBId,
  }) {
    _id = id;
    _code = code;
    _type = type;
    _order = order;
    _displayName = displayName;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _mongoDBId = mongoDBId;
  }

  NextYear.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _type = json['type'];
    _order = json['order'];
    _displayName = json['displayName'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _mongoDBId = json['mongoDBId'];
  }
  num? _id;
  String? _code;
  String? _type;
  num? _order;
  String? _displayName;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _mongoDBId;
  NextYear copyWith({
    num? id,
    String? code,
    String? type,
    num? order,
    String? displayName,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    String? mongoDBId,
  }) =>
      NextYear(
        id: id ?? _id,
        code: code ?? _code,
        type: type ?? _type,
        order: order ?? _order,
        displayName: displayName ?? _displayName,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        mongoDBId: mongoDBId ?? _mongoDBId,
      );
  num? get id => _id;
  String? get code => _code;
  String? get type => _type;
  num? get order => _order;
  String? get displayName => _displayName;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get mongoDBId => _mongoDBId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['type'] = _type;
    map['order'] = _order;
    map['displayName'] = _displayName;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['mongoDBId'] = _mongoDBId;
    return map;
  }
}
