import 'dart:convert';

import 'package:marketing/marketing.dart';

/// id : 671
/// merchantId : 4
/// name : "砍一刀"
/// type : "helpChop"
/// targetType : "user"
/// targetId : "dev231100400291"
/// code : "03905a53-0788-4254-9eb6-5a812debfc44"
/// status : "processed"
/// description : "測試一下"
/// detail : "砍"
/// settledAt : null
/// expiredAt : null
/// custom : null
/// meta : null
/// match : null
/// act : null
/// childrenMatch : null
/// childrenAct : null
/// path : null
/// refId : 667
/// deletedAt : null
/// createdAt : "2024-05-15T01:33:59.773Z"
/// updatedAt : "2024-05-15T01:33:59.773Z"
/// ref : {"id":667,"merchantId":4,"name":"砍一刀","type":"helpChop","targetType":null,"targetId":null,"code":"f8a7b7d1-323f-465c-b1df-541c3d916a52","status":"processed","description":"測試一下","detail":"砍","settledAt":null,"expiredAt":null,"custom":{"id":81,"use":"1/134","file":{},"name":"新人2123213","rule":{"cost":1,"endDate":"","doorsill":"10","getLimit":2,"goodsIds":"","upCoupon":false,"validDay":99,"beginDate":""},"share":false,"coupon":81,"people":4,"shopId":"0","status":true,"addTime":"2024-03-20T08:53:36.123Z","quantity":99,"sourceId":1,"deletedAt":null,"projectId":4,"description":"撒打算打算打算打算打算的"},"meta":null,"match":null,"act":{"type":"helpChop"},"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-05-13T09:41:22.790Z","updatedAt":"2024-05-15T01:50:30.616Z"}
/// children : [{"id":672,"merchantId":4,"name":"砍一刀","type":"helpChop","targetType":"user","targetId":"440e240f-b663-49a1-9336-ae4cdbc456d4","code":"7f6d0758-2fe8-407e-9478-7f8383896421","status":"processed","description":"測試一下","detail":"砍","settledAt":null,"expiredAt":null,"custom":null,"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":671,"deletedAt":null,"createdAt":"2024-05-15T01:38:41.929Z","updatedAt":"2024-05-15T01:38:41.929Z"}]

ActivityLogItem activityLogItemFromJson(String str) =>
    ActivityLogItem.fromJson(json.decode(str));
String activityLogItemToJson(ActivityLogItem data) =>
    json.encode(data.toJson());

class ActivityLogItem {
  ActivityLogItem({
    num? id,
    num? merchantId,
    String? name,
    String? type,
    String? targetType,
    String? targetId,
    String? code,
    String? status,
    String? description,
    String? detail,
    dynamic settledAt,
    dynamic expiredAt,
    dynamic custom,
    dynamic meta,
    dynamic match,
    dynamic act,
    dynamic childrenMatch,
    dynamic childrenAct,
    dynamic path,
    num? refId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    Ref? ref,
    List<ActivityItem>? children,
  }) {
    _id = id;
    _merchantId = merchantId;
    _name = name;
    _type = type;
    _targetType = targetType;
    _targetId = targetId;
    _code = code;
    _status = status;
    _description = description;
    _detail = detail;
    _settledAt = settledAt;
    _expiredAt = expiredAt;
    _custom = custom;
    _meta = meta;
    _match = match;
    _act = act;
    _childrenMatch = childrenMatch;
    _childrenAct = childrenAct;
    _path = path;
    _refId = refId;
    _deletedAt = deletedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _ref = ref;
    _children = children;
  }

  ActivityLogItem.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _type = json['type'];
    _targetType = json['targetType'];
    _targetId = json['targetId'];
    _code = json['code'];
    _status = json['status'];
    _description = json['description'];
    _detail = json['detail'];
    _settledAt = json['settledAt'];
    _expiredAt = json['expiredAt'];
    _custom = json['custom'];
    _meta = json['meta'];
    _match = json['match'];
    _act = json['act'];
    _childrenMatch = json['childrenMatch'];
    _childrenAct = json['childrenAct'];
    _path = json['path'];
    _refId = json['refId'];
    _deletedAt = json['deletedAt'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _ref = json['ref'] != null ? Ref.fromJson(json['ref']) : null;
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(ActivityItem.fromJson(v));
      });
    }
  }
  num? _id;
  num? _merchantId;
  String? _name;
  String? _type;
  String? _targetType;
  String? _targetId;
  String? _code;
  String? _status;
  String? _description;
  String? _detail;
  dynamic _settledAt;
  dynamic _expiredAt;
  dynamic _custom;
  dynamic _meta;
  dynamic _match;
  dynamic _act;
  dynamic _childrenMatch;
  dynamic _childrenAct;
  dynamic _path;
  num? _refId;
  dynamic _deletedAt;
  String? _createdAt;
  String? _updatedAt;
  Ref? _ref;
  List<ActivityItem>? _children;
  ActivityLogItem copyWith({
    num? id,
    num? merchantId,
    String? name,
    String? type,
    String? targetType,
    String? targetId,
    String? code,
    String? status,
    String? description,
    String? detail,
    dynamic settledAt,
    dynamic expiredAt,
    dynamic custom,
    dynamic meta,
    dynamic match,
    dynamic act,
    dynamic childrenMatch,
    dynamic childrenAct,
    dynamic path,
    num? refId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    Ref? ref,
    List<ActivityItem>? children,
  }) =>
      ActivityLogItem(
        id: id ?? _id,
        merchantId: merchantId ?? _merchantId,
        name: name ?? _name,
        type: type ?? _type,
        targetType: targetType ?? _targetType,
        targetId: targetId ?? _targetId,
        code: code ?? _code,
        status: status ?? _status,
        description: description ?? _description,
        detail: detail ?? _detail,
        settledAt: settledAt ?? _settledAt,
        expiredAt: expiredAt ?? _expiredAt,
        custom: custom ?? _custom,
        meta: meta ?? _meta,
        match: match ?? _match,
        act: act ?? _act,
        childrenMatch: childrenMatch ?? _childrenMatch,
        childrenAct: childrenAct ?? _childrenAct,
        path: path ?? _path,
        refId: refId ?? _refId,
        deletedAt: deletedAt ?? _deletedAt,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        ref: ref ?? _ref,
        children: children ?? _children,
      );
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get name => _name;
  String? get type => _type;
  String? get targetType => _targetType;
  String? get targetId => _targetId;
  String? get code => _code;
  String? get status => _status;
  String? get description => _description;
  String? get detail => _detail;
  dynamic get settledAt => _settledAt;
  dynamic get expiredAt => _expiredAt;
  dynamic get custom => _custom;
  dynamic get meta => _meta;
  dynamic get match => _match;
  dynamic get act => _act;
  dynamic get childrenMatch => _childrenMatch;
  dynamic get childrenAct => _childrenAct;
  dynamic get path => _path;
  num? get refId => _refId;
  dynamic get deletedAt => _deletedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Ref? get ref => _ref;
  List<ActivityItem>? get children => _children;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['type'] = _type;
    map['targetType'] = _targetType;
    map['targetId'] = _targetId;
    map['code'] = _code;
    map['status'] = _status;
    map['description'] = _description;
    map['detail'] = _detail;
    map['settledAt'] = _settledAt;
    map['expiredAt'] = _expiredAt;
    map['custom'] = _custom;
    map['meta'] = _meta;
    map['match'] = _match;
    map['act'] = _act;
    map['childrenMatch'] = _childrenMatch;
    map['childrenAct'] = _childrenAct;
    map['path'] = _path;
    map['refId'] = _refId;
    map['deletedAt'] = _deletedAt;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_ref != null) {
      map['ref'] = _ref?.toJson();
    }
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 667
/// merchantId : 4
/// name : "砍一刀"
/// type : "helpChop"
/// targetType : null
/// targetId : null
/// code : "f8a7b7d1-323f-465c-b1df-541c3d916a52"
/// status : "processed"
/// description : "測試一下"
/// detail : "砍"
/// settledAt : null
/// expiredAt : null
/// custom : {"id":81,"use":"1/134","file":{},"name":"新人2123213","rule":{"cost":1,"endDate":"","doorsill":"10","getLimit":2,"goodsIds":"","upCoupon":false,"validDay":99,"beginDate":""},"share":false,"coupon":81,"people":4,"shopId":"0","status":true,"addTime":"2024-03-20T08:53:36.123Z","quantity":99,"sourceId":1,"deletedAt":null,"projectId":4,"description":"撒打算打算打算打算打算的"}
/// meta : null
/// match : null
/// act : {"type":"helpChop"}
/// childrenMatch : null
/// childrenAct : null
/// path : null
/// refId : null
/// deletedAt : null
/// createdAt : "2024-05-13T09:41:22.790Z"
/// updatedAt : "2024-05-15T01:50:30.616Z"

Ref refFromJson(String str) => Ref.fromJson(json.decode(str));
String refToJson(Ref data) => json.encode(data.toJson());

class Ref {
  Ref({
    num? id,
    num? merchantId,
    String? name,
    String? type,
    dynamic targetType,
    dynamic targetId,
    String? code,
    String? status,
    String? description,
    String? detail,
    dynamic settledAt,
    dynamic expiredAt,
    Map? custom,
    dynamic meta,
    dynamic match,
    Act? act,
    dynamic childrenMatch,
    dynamic childrenAct,
    dynamic path,
    dynamic refId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _merchantId = merchantId;
    _name = name;
    _type = type;
    _targetType = targetType;
    _targetId = targetId;
    _code = code;
    _status = status;
    _description = description;
    _detail = detail;
    _settledAt = settledAt;
    _expiredAt = expiredAt;
    _custom = custom;
    _meta = meta;
    _match = match;
    _act = act;
    _childrenMatch = childrenMatch;
    _childrenAct = childrenAct;
    _path = path;
    _refId = refId;
    _deletedAt = deletedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Ref.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _type = json['type'];
    _targetType = json['targetType'];
    _targetId = json['targetId'];
    _code = json['code'];
    _status = json['status'];
    _description = json['description'];
    _detail = json['detail'];
    _settledAt = json['settledAt'];
    _expiredAt = json['expiredAt'];
    _custom = json['custom'];
    _meta = json['meta'];
    _match = json['match'];
    _act = json['act'] != null ? Act.fromJson(json['act']) : null;
    _childrenMatch = json['childrenMatch'];
    _childrenAct = json['childrenAct'];
    _path = json['path'];
    _refId = json['refId'];
    _deletedAt = json['deletedAt'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _merchantId;
  String? _name;
  String? _type;
  dynamic _targetType;
  dynamic _targetId;
  String? _code;
  String? _status;
  String? _description;
  String? _detail;
  dynamic _settledAt;
  dynamic _expiredAt;
  Map? _custom;
  dynamic _meta;
  dynamic _match;
  Act? _act;
  dynamic _childrenMatch;
  dynamic _childrenAct;
  dynamic _path;
  dynamic _refId;
  dynamic _deletedAt;
  String? _createdAt;
  String? _updatedAt;
  Ref copyWith({
    num? id,
    num? merchantId,
    String? name,
    String? type,
    dynamic targetType,
    dynamic targetId,
    String? code,
    String? status,
    String? description,
    String? detail,
    dynamic settledAt,
    dynamic expiredAt,
    Map? custom,
    dynamic meta,
    dynamic match,
    Act? act,
    dynamic childrenMatch,
    dynamic childrenAct,
    dynamic path,
    dynamic refId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      Ref(
        id: id ?? _id,
        merchantId: merchantId ?? _merchantId,
        name: name ?? _name,
        type: type ?? _type,
        targetType: targetType ?? _targetType,
        targetId: targetId ?? _targetId,
        code: code ?? _code,
        status: status ?? _status,
        description: description ?? _description,
        detail: detail ?? _detail,
        settledAt: settledAt ?? _settledAt,
        expiredAt: expiredAt ?? _expiredAt,
        custom: custom ?? _custom,
        meta: meta ?? _meta,
        match: match ?? _match,
        act: act ?? _act,
        childrenMatch: childrenMatch ?? _childrenMatch,
        childrenAct: childrenAct ?? _childrenAct,
        path: path ?? _path,
        refId: refId ?? _refId,
        deletedAt: deletedAt ?? _deletedAt,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get name => _name;
  String? get type => _type;
  dynamic get targetType => _targetType;
  dynamic get targetId => _targetId;
  String? get code => _code;
  String? get status => _status;
  String? get description => _description;
  String? get detail => _detail;
  dynamic get settledAt => _settledAt;
  dynamic get expiredAt => _expiredAt;
  Map? get custom => _custom;
  dynamic get meta => _meta;
  dynamic get match => _match;
  Act? get act => _act;
  dynamic get childrenMatch => _childrenMatch;
  dynamic get childrenAct => _childrenAct;
  dynamic get path => _path;
  dynamic get refId => _refId;
  dynamic get deletedAt => _deletedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['type'] = _type;
    map['targetType'] = _targetType;
    map['targetId'] = _targetId;
    map['code'] = _code;
    map['status'] = _status;
    map['description'] = _description;
    map['detail'] = _detail;
    map['settledAt'] = _settledAt;
    map['expiredAt'] = _expiredAt;

    map['custom'] = _custom;

    map['meta'] = _meta;
    map['match'] = _match;
    if (_act != null) {
      map['act'] = _act?.toJson();
    }
    map['childrenMatch'] = _childrenMatch;
    map['childrenAct'] = _childrenAct;
    map['path'] = _path;
    map['refId'] = _refId;
    map['deletedAt'] = _deletedAt;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// type : "helpChop"

Act actFromJson(String str) => Act.fromJson(json.decode(str));
String actToJson(Act data) => json.encode(data.toJson());

class Act {
  Act({
    String? type,
  }) {
    _type = type;
  }

  Act.fromJson(dynamic json) {
    _type = json['type'];
  }
  String? _type;
  Act copyWith({
    String? type,
  }) =>
      Act(
        type: type ?? _type,
      );
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    return map;
  }
}

/// id : 81
/// use : "1/134"
/// file : {}
/// name : "新人2123213"
/// rule : {"cost":1,"endDate":"","doorsill":"10","getLimit":2,"goodsIds":"","upCoupon":false,"validDay":99,"beginDate":""}
/// share : false
/// coupon : 81
/// people : 4
/// shopId : "0"
/// status : true
/// addTime : "2024-03-20T08:53:36.123Z"
/// quantity : 99
/// sourceId : 1
/// deletedAt : null
/// projectId : 4
/// description : "撒打算打算打算打算打算的"
