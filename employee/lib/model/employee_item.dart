import 'dart:convert';

/// id : 9
/// number : "ZH1577"
/// merchantId : 1
/// uid : null
/// title : "楊仕清"
/// nickname : null
/// position : ""
/// startDate : null
/// endDate : null
/// links : {"wxwork":"ZH1577"}
/// createdAt : "2024-10-23T08:57:35.587Z"
/// updatedAt : "2024-10-24T09:15:05.920Z"
/// branches : null
/// merchant : {"id":1,"code":"scholar","title":"儒林教育","createdAt":"2024-10-23T08:36:40.866Z","updatedAt":"2024-10-23T08:36:40.866Z"}
/// departments : [{"id":3,"employeeId":9,"departmentId":1,"master":true,"createdAt":"2024-10-23T08:57:35.587Z","updatedAt":"2024-10-24T09:15:05.913Z","department":{"id":1,"merchantId":1,"code":"wxwk_20","title":"資訊維修部","links":{"wxwork":20},"branches":["B0000011","B0000013","B0000017","B0000021","B0000022","B0000023A","B0000029","B000023","B000024","B0000738","B0000797","B0000809","B0000822","B0000830","B0000879","B1000009","B1000014","B1000015","B1000016","B1000018","B1000019","B1000020","B1000026","B1000027","B100004","B100007","B100009","B100010","B100025","B0000957","B1000100","B1000957","B1000958","B0000490","ZX0000","B0000820"],"parentId":null,"createdAt":"2024-10-23T08:57:07.819Z","updatedAt":"2024-10-25T01:33:16.496Z"}}]

EmployeeItem employeeItemFromJson(String str) => EmployeeItem.fromJson(json.decode(str));
String employeeItemToJson(EmployeeItem data) => json.encode(data.toJson());

class EmployeeItem {
  EmployeeItem({
    num? id,
    String? number,
    num? merchantId,
    dynamic uid,
    String? title,
    dynamic nickname,
    String? position,
    dynamic startDate,
    dynamic endDate,
    Links? links,
    String? createdAt,
    String? updatedAt,
    dynamic branches,
    Merchant? merchant,
    List<Departments>? departments,
  }) {
    _id = id;
    _number = number;
    _merchantId = merchantId;
    _uid = uid;
    _title = title;
    _nickname = nickname;
    _position = position;
    _startDate = startDate;
    _endDate = endDate;
    _links = links;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _branches = branches;
    _merchant = merchant;
    _departments = departments;
  }

  EmployeeItem.fromJson(dynamic json) {
    _id = json['id'];
    _number = json['number'];
    _merchantId = json['merchantId'];
    _uid = json['uid'];
    _title = json['title'];
    _nickname = json['nickname'];
    _position = json['position'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _branches = json['branches'];
    _merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    if (json['departments'] != null) {
      _departments = [];
      json['departments'].forEach((v) {
        _departments?.add(Departments.fromJson(v));
      });
    }
  }
  num? _id;
  String? _number;
  num? _merchantId;
  dynamic _uid;
  String? _title;
  dynamic _nickname;
  String? _position;
  dynamic _startDate;
  dynamic _endDate;
  Links? _links;
  String? _createdAt;
  String? _updatedAt;
  dynamic _branches;
  Merchant? _merchant;
  List<Departments>? _departments;

  num? get id => _id;
  String? get number => _number;
  num? get merchantId => _merchantId;
  dynamic get uid => _uid;
  String? get title => _title;
  dynamic get nickname => _nickname;
  String? get position => _position;
  dynamic get startDate => _startDate;
  dynamic get endDate => _endDate;
  Links? get links => _links;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get branches => _branches;
  Merchant? get merchant => _merchant;
  List<Departments>? get departments => _departments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['number'] = _number;
    map['merchantId'] = _merchantId;
    map['uid'] = _uid;
    map['title'] = _title;
    map['nickname'] = _nickname;
    map['position'] = _position;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['branches'] = _branches;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    if (_departments != null) {
      map['departments'] = _departments?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 3
/// employeeId : 9
/// departmentId : 1
/// master : true
/// createdAt : "2024-10-23T08:57:35.587Z"
/// updatedAt : "2024-10-24T09:15:05.913Z"
/// department : {"id":1,"merchantId":1,"code":"wxwk_20","title":"資訊維修部","links":{"wxwork":20},"branches":["B0000011","B0000013","B0000017","B0000021","B0000022","B0000023A","B0000029","B000023","B000024","B0000738","B0000797","B0000809","B0000822","B0000830","B0000879","B1000009","B1000014","B1000015","B1000016","B1000018","B1000019","B1000020","B1000026","B1000027","B100004","B100007","B100009","B100010","B100025","B0000957","B1000100","B1000957","B1000958","B0000490","ZX0000","B0000820"],"parentId":null,"createdAt":"2024-10-23T08:57:07.819Z","updatedAt":"2024-10-25T01:33:16.496Z"}

Departments departmentsFromJson(String str) => Departments.fromJson(json.decode(str));
String departmentsToJson(Departments data) => json.encode(data.toJson());

class Departments {
  Departments({
    num? id,
    num? employeeId,
    num? departmentId,
    bool? master,
    String? createdAt,
    String? updatedAt,
    Department? department,
  }) {
    _id = id;
    _employeeId = employeeId;
    _departmentId = departmentId;
    _master = master;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _department = department;
  }

  Departments.fromJson(dynamic json) {
    _id = json['id'];
    _employeeId = json['employeeId'];
    _departmentId = json['departmentId'];
    _master = json['master'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _department = json['department'] != null ? Department.fromJson(json['department']) : null;
  }
  num? _id;
  num? _employeeId;
  num? _departmentId;
  bool? _master;
  String? _createdAt;
  String? _updatedAt;
  Department? _department;

  num? get id => _id;
  num? get employeeId => _employeeId;
  num? get departmentId => _departmentId;
  bool? get master => _master;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Department? get department => _department;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['employeeId'] = _employeeId;
    map['departmentId'] = _departmentId;
    map['master'] = _master;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_department != null) {
      map['department'] = _department?.toJson();
    }
    return map;
  }
}

/// id : 1
/// merchantId : 1
/// code : "wxwk_20"
/// title : "資訊維修部"
/// links : {"wxwork":20}
/// branches : ["B0000011","B0000013","B0000017","B0000021","B0000022","B0000023A","B0000029","B000023","B000024","B0000738","B0000797","B0000809","B0000822","B0000830","B0000879","B1000009","B1000014","B1000015","B1000016","B1000018","B1000019","B1000020","B1000026","B1000027","B100004","B100007","B100009","B100010","B100025","B0000957","B1000100","B1000957","B1000958","B0000490","ZX0000","B0000820"]
/// parentId : null
/// createdAt : "2024-10-23T08:57:07.819Z"
/// updatedAt : "2024-10-25T01:33:16.496Z"

Department departmentFromJson(String str) => Department.fromJson(json.decode(str));
String departmentToJson(Department data) => json.encode(data.toJson());

class Department {
  Department({
    num? id,
    num? merchantId,
    String? code,
    String? title,
    Links? links,
    List<String>? branches,
    dynamic parentId,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _merchantId = merchantId;
    _code = code;
    _title = title;
    _links = links;
    _branches = branches;
    _parentId = parentId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Department.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _code = json['code'];
    _title = json['title'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _branches = json['branches'] != null ? json['branches'].cast<String>() : [];
    _parentId = json['parentId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _merchantId;
  String? _code;
  String? _title;
  Links? _links;
  List<String>? _branches;
  dynamic _parentId;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get code => _code;
  String? get title => _title;
  Links? get links => _links;
  List<String>? get branches => _branches;
  dynamic get parentId => _parentId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['code'] = _code;
    map['title'] = _title;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    map['branches'] = _branches;
    map['parentId'] = _parentId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// wxwork : 20

Links linksFromJson(String str) => Links.fromJson(json.decode(str));
String linksToJson(Links data) => json.encode(data.toJson());

class Links {
  Links({
    dynamic wxwork,
  }) {
    _wxwork = wxwork;
  }

  Links.fromJson(dynamic json) {
    _wxwork = json['wxwork'];
  }
  dynamic _wxwork;

  dynamic get wxwork => _wxwork;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['wxwork'] = _wxwork;
    return map;
  }
}

/// id : 1
/// code : "scholar"
/// title : "儒林教育"
/// createdAt : "2024-10-23T08:36:40.866Z"
/// updatedAt : "2024-10-23T08:36:40.866Z"

Merchant merchantFromJson(String str) => Merchant.fromJson(json.decode(str));
String merchantToJson(Merchant data) => json.encode(data.toJson());

class Merchant {
  Merchant({
    num? id,
    String? code,
    String? title,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _code = code;
    _title = title;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Merchant.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _code;
  String? _title;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get code => _code;
  String? get title => _title;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}
