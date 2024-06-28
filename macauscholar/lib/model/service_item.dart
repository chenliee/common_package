import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// id : 685
/// title : "K3補習費+下午茶"
/// packageId : 5
/// price : 2080
/// common : false
/// code : "1718092347780:TUIFEE00K3+TUIMEAL200"
/// categoryId : null
/// order : 0
/// detailLog : null
/// description : null
/// servicesTable : [{"code":"TUIFEE00K3","label":"K3補習費","value":1800},{"code":"TUIMEAL200","label":"下午茶","value":280}]
/// withBranches : ["s"]
/// withoutBranches : ["s"]
/// withSchools : ["s"]
/// withoutSchools : ["s"]
/// withoutSchoolYears : ["s"]
/// withSchoolYears : ["s"]
/// tags : null
/// color : null
/// licence : null
/// images : null
/// appShow : false
/// userEndNotDisplay : false
/// permit : null
/// noDiscount : false
/// recordIdCode : null
/// cover : null
/// createdAt : "2024-06-13T02:25:07.975Z"
/// updatedAt : "2024-06-13T02:25:07.975Z"
/// deletedAt : null
/// mongoDBId : null
/// bindServices : [{"id":590,"title":"K3補習費","packageId":null,"price":1800,"common":false,"code":"TUIFEE00K3","categoryId":17,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K3","value":1800}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:40:50.394Z","deletedAt":null,"mongoDBId":"qge6V53arf"},{"id":659,"title":"下午茶","packageId":null,"price":280,"common":false,"code":"TUIMEAL200","categoryId":16,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIMEAL200","value":280}],"withBranches":null,"withoutBranches":["51","B0000011"],"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-24T07:08:00.159Z","deletedAt":null,"mongoDBId":"xj7m00rXGs"}]

ServiceItem serviceItemFromJson(String str) =>
    ServiceItem.fromJson(json.decode(str));
String serviceItemToJson(ServiceItem data) => json.encode(data.toJson());

class ServiceItem {
  ServiceItem({
    num? id,
    String? title,
    num? packageId,
    num? price,
    bool? common,
    String? code,
    dynamic categoryId,
    num? order,
    dynamic detailLog,
    dynamic description,
    List<ServicesTable>? servicesTable,
    List<String>? withBranches,
    List<String>? withoutBranches,
    List<SchoolItem>? withSchools,
    List<SchoolItem>? withoutSchools,
    List<SchoolYearItem>? withoutSchoolYears,
    List<SchoolYearItem>? withSchoolYears,
    dynamic tags,
    dynamic color,
    dynamic licence,
    dynamic images,
    bool? appShow,
    bool? userEndNotDisplay,
    dynamic permit,
    bool? noDiscount,
    dynamic recordIdCode,
    dynamic cover,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    dynamic mongoDBId,
    List<ServiceItem>? bindServices,
    List<ServiceItem>? selectServices,
  }) {
    _id = id;
    _title = title;
    _packageId = packageId;
    _price = price;
    _common = common;
    _code = code;
    _categoryId = categoryId;
    _order = order;
    _detailLog = detailLog;
    _description = description;
    _servicesTable = servicesTable;
    _withBranches = withBranches;
    _withoutBranches = withoutBranches;
    _withSchools = withSchools;
    _withoutSchools = withoutSchools;
    _withoutSchoolYears = withoutSchoolYears;
    _withSchoolYears = withSchoolYears;
    _tags = tags;
    _color = color;
    _licence = licence;
    _images = images;
    _appShow = appShow;
    _userEndNotDisplay = userEndNotDisplay;
    _permit = permit;
    _noDiscount = noDiscount;
    _recordIdCode = recordIdCode;
    _cover = cover;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _mongoDBId = mongoDBId;
    _bindServices = bindServices;
    _selectServices = selectServices;
  }

  ServiceItem.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _packageId = json['packageId'];
    _price = json['price'];
    _common = json['common'];
    _code = json['code'];
    _categoryId = json['categoryId'];
    _order = json['order'];
    _detailLog = json['detailLog'];
    _description = json['description'];
    if (json['servicesTable'] != null) {
      _servicesTable = [];
      json['servicesTable'].forEach((v) {
        _servicesTable?.add(ServicesTable.fromJson(v));
      });
    }
    _withBranches =
        json['withBranches'] != null ? json['withBranches'].cast<String>() : [];
    _withoutBranches = json['withoutBranches'] != null
        ? json['withoutBranches'].cast<String>()
        : [];
    _withoutSchools = [];
    if (json['withoutSchools'] != null) {
      json['withoutSchools'].forEach((v) {
        _withoutSchools?.add(SchoolItem.fromJson(v));
      });
    }
    _withSchools = [];
    if (json['withSchools'] != null) {
      json['withSchools'].forEach((v) {
        _withSchools?.add(SchoolItem.fromJson(v));
      });
    }
    _withoutSchoolYears = [];
    if (json['withoutSchoolYears'] != null) {
      json['withoutSchoolYears'].forEach((v) {
        _withoutSchoolYears?.add(SchoolYearItem.fromJson(v));
      });
    }
    _withSchoolYears = [];
    if (json['withSchoolYears'] != null) {
      json['withSchoolYears'].forEach((v) {
        _withSchoolYears?.add(SchoolYearItem.fromJson(v));
      });
    }
    _tags = json['tags'];
    _color = json['color'];
    _licence = json['licence'];
    _images = json['images'];
    _appShow = json['appShow'];
    _userEndNotDisplay = json['userEndNotDisplay'];
    _permit = json['permit'];
    _noDiscount = json['noDiscount'];
    _recordIdCode = json['recordIdCode'];
    _cover = json['cover'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _mongoDBId = json['mongoDBId'];
    if (json['bindServices'] != null) {
      _bindServices = [];
      json['bindServices'].forEach((v) {
        _bindServices?.add(ServiceItem.fromJson(v));
      });
    }
    _selectServices = [];
    if (json['selectServices'] != null) {
      json['selectServices'].forEach((v) {
        _selectServices?.add(ServiceItem.fromJson(v));
      });
    }
  }
  num? _id;
  String? _title;
  num? _packageId;
  num? _price;
  bool? _common;
  String? _code;
  dynamic _categoryId;
  num? _order;
  dynamic _detailLog;
  dynamic _description;
  List<ServicesTable>? _servicesTable;
  List<String>? _withBranches;
  List<String>? _withoutBranches;
  List<SchoolItem>? _withSchools;
  List<SchoolItem>? _withoutSchools;
  List<SchoolYearItem>? _withoutSchoolYears;
  List<SchoolYearItem>? _withSchoolYears;
  dynamic _tags;
  dynamic _color;
  dynamic _licence;
  dynamic _images;
  bool? _appShow;
  bool? _userEndNotDisplay;
  dynamic _permit;
  bool? _noDiscount;
  dynamic _recordIdCode;
  dynamic _cover;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  dynamic _mongoDBId;
  List<ServiceItem>? _bindServices;
  List<ServiceItem>? _selectServices;
  ServiceItem copyWith({
    num? id,
    String? title,
    num? packageId,
    num? price,
    bool? common,
    String? code,
    dynamic categoryId,
    num? order,
    dynamic detailLog,
    dynamic description,
    List<ServicesTable>? servicesTable,
    List<String>? withBranches,
    List<String>? withoutBranches,
    List<SchoolItem>? withSchools,
    List<SchoolItem>? withoutSchools,
    List<SchoolYearItem>? withoutSchoolYears,
    List<SchoolYearItem>? withSchoolYears,
    dynamic tags,
    dynamic color,
    dynamic licence,
    dynamic images,
    bool? appShow,
    bool? userEndNotDisplay,
    dynamic permit,
    bool? noDiscount,
    dynamic recordIdCode,
    dynamic cover,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    dynamic mongoDBId,
    List<ServiceItem>? bindServices,
    List<ServiceItem>? selectServices,
  }) =>
      ServiceItem(
        id: id ?? _id,
        title: title ?? _title,
        packageId: packageId ?? _packageId,
        price: price ?? _price,
        common: common ?? _common,
        code: code ?? _code,
        categoryId: categoryId ?? _categoryId,
        order: order ?? _order,
        detailLog: detailLog ?? _detailLog,
        description: description ?? _description,
        servicesTable: servicesTable ?? _servicesTable,
        withBranches: withBranches ?? _withBranches,
        withoutBranches: withoutBranches ?? _withoutBranches,
        withSchools: withSchools ?? _withSchools,
        withoutSchools: withoutSchools ?? _withoutSchools,
        withoutSchoolYears: withoutSchoolYears ?? _withoutSchoolYears,
        withSchoolYears: withSchoolYears ?? _withSchoolYears,
        tags: tags ?? _tags,
        color: color ?? _color,
        licence: licence ?? _licence,
        images: images ?? _images,
        appShow: appShow ?? _appShow,
        userEndNotDisplay: userEndNotDisplay ?? _userEndNotDisplay,
        permit: permit ?? _permit,
        noDiscount: noDiscount ?? _noDiscount,
        recordIdCode: recordIdCode ?? _recordIdCode,
        cover: cover ?? _cover,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        mongoDBId: mongoDBId ?? _mongoDBId,
        bindServices: bindServices ?? _bindServices,
        selectServices: selectServices ?? _selectServices,
      );
  num? get id => _id;
  String? get title => _title;
  num? get packageId => _packageId;
  num? get price => _price;
  bool? get common => _common;
  String? get code => _code;
  dynamic get categoryId => _categoryId;
  num? get order => _order;
  dynamic get detailLog => _detailLog;
  dynamic get description => _description;
  List<ServicesTable>? get servicesTable => _servicesTable;
  List<String>? get withBranches => _withBranches;
  List<String>? get withoutBranches => _withoutBranches;
  List<SchoolItem>? get withSchools => _withSchools;
  List<SchoolItem>? get withoutSchools => _withoutSchools;
  List<SchoolYearItem>? get withoutSchoolYears => _withoutSchoolYears;
  List<SchoolYearItem>? get withSchoolYears => _withSchoolYears;
  dynamic get tags => _tags;
  dynamic get color => _color;
  dynamic get licence => _licence;
  dynamic get images => _images;
  bool? get appShow => _appShow;
  bool? get userEndNotDisplay => _userEndNotDisplay;
  dynamic get permit => _permit;
  bool? get noDiscount => _noDiscount;
  dynamic get recordIdCode => _recordIdCode;
  dynamic get cover => _cover;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  dynamic get mongoDBId => _mongoDBId;
  List<ServiceItem>? get bindServices => _bindServices;
  List<ServiceItem>? get selectServices => _selectServices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['packageId'] = _packageId;
    map['price'] = _price;
    map['common'] = _common;
    map['code'] = _code;
    map['categoryId'] = _categoryId;
    map['order'] = _order;
    map['detailLog'] = _detailLog;
    map['description'] = _description;
    if (_servicesTable != null) {
      map['servicesTable'] = _servicesTable?.map((v) => v.toJson()).toList();
    }
    map['withBranches'] = _withBranches;
    map['withoutBranches'] = _withoutBranches;
    map['withSchools'] = _withSchools;
    map['withoutSchools'] = _withoutSchools;
    map['withoutSchoolYears'] = _withoutSchoolYears;
    map['withSchoolYears'] = _withSchoolYears;
    map['tags'] = _tags;
    map['color'] = _color;
    map['licence'] = _licence;
    map['images'] = _images;
    map['appShow'] = _appShow;
    map['userEndNotDisplay'] = _userEndNotDisplay;
    map['permit'] = _permit;
    map['noDiscount'] = _noDiscount;
    map['recordIdCode'] = _recordIdCode;
    map['cover'] = _cover;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['mongoDBId'] = _mongoDBId;
    if (_bindServices != null) {
      map['bindServices'] = _bindServices?.map((v) => v.toJson()).toList();
    }
    if (_selectServices != null) {
      map['selectServices'] = _selectServices?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// code : "TUIFEE00K3"
/// label : "K3補習費"
/// value : 1800

ServicesTable servicesTableFromJson(String str) =>
    ServicesTable.fromJson(json.decode(str));
String servicesTableToJson(ServicesTable data) => json.encode(data.toJson());

class ServicesTable {
  ServicesTable({
    String? code,
    String? label,
    num? value,
  }) {
    _code = code;
    _label = label;
    _value = value;
  }

  ServicesTable.fromJson(dynamic json) {
    _code = json['code'];
    _label = json['label'];
    _value = json['value'];
  }
  String? _code;
  String? _label;
  num? _value;
  ServicesTable copyWith({
    String? code,
    String? label,
    num? value,
  }) =>
      ServicesTable(
        code: code ?? _code,
        label: label ?? _label,
        value: value ?? _value,
      );
  String? get code => _code;
  String? get label => _label;
  num? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['label'] = _label;
    map['value'] = _value;
    return map;
  }
}
