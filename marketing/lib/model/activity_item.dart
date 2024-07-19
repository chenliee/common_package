import 'dart:convert';

/// id : 635
/// merchantId : 4
/// name : "全澳免費送貨上門權益（每次消費滿$200）"
/// type : "memberEquity"
/// targetType : null
/// targetId : null
/// code : "8bbc82ef-9bc7-4b56-bf17-cce62e4985e8"
/// status : "processed"
/// description : "全澳免費送貨上門權益（每次消費滿$200）"
/// detail : "全澳免費送貨上門權益（每次消費滿$200）"
/// settledAt : null
/// expiredAt : null
/// custom : {"sort":1,"grade":"f7b62dbe-2117-4b7d-92c8-7e9bcf468813"}
/// meta : null
/// match : null
/// act : null
/// childrenMatch : null
/// childrenAct : null
/// path : null
/// refId : null
/// deletedAt : null
/// createdAt : "2024-04-01T07:55:20.259Z"
/// updatedAt : "2024-04-02T01:51:46.869Z"
/// files : {"activity":{"title":"進行中","multiple":false,"desc":null,"value":{"id":24,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c_b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c_Slice%20196.png","mime":"image/png","name":"b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c_Slice 196.png","size":"3955","hash":"b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c"}},"peding":{"title":"等待開始","multiple":false,"desc":null,"value":{"id":25,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice%20328@2x.png","mime":"image/png","name":"cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice 328@2x.png","size":"2895","hash":"cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35"}}}

ActivityItem activityItemFromJson(String str) =>
    ActivityItem.fromJson(json.decode(str));
String activityItemToJson(ActivityItem data) => json.encode(data.toJson());

class ActivityItem {
  ActivityItem({
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
    dynamic act,
    dynamic childrenMatch,
    dynamic childrenAct,
    dynamic path,
    dynamic refId,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    Files? files,
    List<ActivityItem>? children,
    bool? vaild,
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
    _files = files;
    _children = children;
    _vaild = vaild;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityItem &&
          runtimeType == other.runtimeType &&
          _id == other._id &&
          _code == other._code;

  @override
  int get hashCode => _id.hashCode ^ _code.hashCode;

  ActivityItem.fromJson(dynamic json) {
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
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(ActivityItem.fromJson(v));
      });
    }
    _vaild = json['vaild'];
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
  dynamic _act;
  dynamic _childrenMatch;
  dynamic _childrenAct;
  dynamic _path;
  dynamic _refId;
  dynamic _deletedAt;
  String? _createdAt;
  String? _updatedAt;
  Files? _files;
  List<ActivityItem>? _children;
  bool? _vaild;
  ActivityItem copyWith(
          {num? id,
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
          dynamic act,
          dynamic childrenMatch,
          dynamic childrenAct,
          dynamic path,
          dynamic refId,
          dynamic deletedAt,
          String? createdAt,
          String? updatedAt,
          Files? files,
          List<ActivityItem>? children,
          bool? vaild}) =>
      ActivityItem(
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
          files: files ?? _files,
          children: children ?? _children,
          vaild: vaild ?? _vaild);
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
  dynamic get act => _act;
  dynamic get childrenMatch => _childrenMatch;
  dynamic get childrenAct => _childrenAct;
  dynamic get path => _path;
  dynamic get refId => _refId;
  dynamic get deletedAt => _deletedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Files? get files => _files;
  List<ActivityItem>? get children => _children;
  bool? get vaild => _vaild;
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
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    map['vaild'] = _vaild;
    return map;
  }
}

/// activity : {"title":"進行中","multiple":false,"desc":null,"value":{"id":24,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c_b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c_Slice%20196.png","mime":"image/png","name":"b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c_Slice 196.png","size":"3955","hash":"b467c6a0fe312b0c4383fb80e28eb4a06919aeb9ebf5eff71db297e8aa36d30c"}}
/// peding : {"title":"等待開始","multiple":false,"desc":null,"value":{"id":25,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice%20328@2x.png","mime":"image/png","name":"cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice 328@2x.png","size":"2895","hash":"cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35"}}

Files filesFromJson(String str) => Files.fromJson(json.decode(str));
String filesToJson(Files data) => json.encode(data.toJson());

class Files {
  Files({
    File? activity,
    File? peding,
  }) {
    _activity = activity;
    _peding = peding;
  }

  Files.fromJson(dynamic json) {
    _activity =
        json['activity'] != null ? File.fromJson(json['activity']) : null;
    _peding = json['peding'] != null ? File.fromJson(json['peding']) : null;
  }
  File? _activity;
  File? _peding;
  Files copyWith({
    File? activity,
    File? peding,
  }) =>
      Files(
        activity: activity ?? _activity,
        peding: peding ?? _peding,
      );
  File? get activity => _activity;
  File? get peding => _peding;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_activity != null) {
      map['activity'] = _activity?.toJson();
    }
    if (_peding != null) {
      map['peding'] = _peding?.toJson();
    }
    return map;
  }
}

/// title : "等待開始"
/// multiple : false
/// desc : null
/// value : {"id":25,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice%20328@2x.png","mime":"image/png","name":"cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice 328@2x.png","size":"2895","hash":"cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35"}

File pedingFromJson(String str) => File.fromJson(json.decode(str));
String pedingToJson(File data) => json.encode(data.toJson());

class File {
  File({
    String? title,
    bool? multiple,
    dynamic desc,
    Value? value,
  }) {
    _title = title;
    _multiple = multiple;
    _desc = desc;
    _value = value;
  }

  File.fromJson(dynamic json) {
    _title = json['title'];
    _multiple = json['multiple'];
    _desc = json['desc'];
    _value = json['value'] != null ? Value.fromJson(json['value']) : null;
  }
  String? _title;
  bool? _multiple;
  dynamic _desc;
  Value? _value;
  File copyWith({
    String? title,
    bool? multiple,
    dynamic desc,
    Value? value,
  }) =>
      File(
        title: title ?? _title,
        multiple: multiple ?? _multiple,
        desc: desc ?? _desc,
        value: value ?? _value,
      );
  String? get title => _title;
  bool? get multiple => _multiple;
  dynamic get desc => _desc;
  Value? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['multiple'] = _multiple;
    map['desc'] = _desc;
    if (_value != null) {
      map['value'] = _value?.toJson();
    }
    return map;
  }
}

/// id : 25
/// url : "https://storage.dev.heyday-catering.com:20443/saas-marketing/public/cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice%20328@2x.png"
/// mime : "image/png"
/// name : "cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35_Slice 328@2x.png"
/// size : "2895"
/// hash : "cf8de84210f93490d78f5392415d07f70725f152380f1c163ea8173fc2382a35"

Value valueFromJson(String str) => Value.fromJson(json.decode(str));
String valueToJson(Value data) => json.encode(data.toJson());

class Value {
  Value({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) {
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
  }

  Value.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
  }
  num? _id;
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  Value copyWith({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) =>
      Value(
        id: id ?? _id,
        url: url ?? _url,
        mime: mime ?? _mime,
        name: name ?? _name,
        size: size ?? _size,
        hash: hash ?? _hash,
      );
  num? get id => _id;
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    return map;
  }
}
