import 'dart:convert';

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
    List<Service>? service,
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
        _service?.add(Service.fromJson(v));
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
  List<Service>? _service;
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
    List<Service>? service,
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
  List<Service>? get service => _service;

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

/// id : 624
/// title : "K2補習費"
/// packageId : null
/// price : 1720
/// common : false
/// code : "TUIFEE00K2"
/// categoryId : 17
/// order : 1
/// detailLog : null
/// description : null
/// servicesTable : [{"code":"TUIFEE00K2","value":1720}]
/// withBranches : null
/// withoutBranches : null
/// tags : []
/// color : null
/// licence : null
/// images : null
/// appShow : false
/// userEndNotDisplay : false
/// permit : null
/// noDiscount : false
/// recordIdCode : null
/// cover : null
/// createdAt : "2021-11-19T10:35:55.221Z"
/// updatedAt : "2024-06-04T02:41:55.380Z"
/// deletedAt : null
/// mongoDBId : "ucZtViNUuE"

Service serviceFromJson(String str) => Service.fromJson(json.decode(str));
String serviceToJson(Service data) => json.encode(data.toJson());

class Service {
  Service({
    num? id,
    String? title,
    dynamic packageId,
    num? price,
    bool? common,
    String? code,
    num? categoryId,
    num? order,
    dynamic detailLog,
    dynamic description,
    List<ServicesTable>? servicesTable,
    dynamic withBranches,
    dynamic withoutBranches,
    List<dynamic>? tags,
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
    String? mongoDBId,
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
  }

  Service.fromJson(dynamic json) {
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
    _withBranches = json['withBranches'];
    _withoutBranches = json['withoutBranches'];
    if (json['tags'] != null) {
      _tags = [];
      // json['tags'].forEach((v) {
      //   _tags?.add(Dynamic.fromJson(v));
      // });
    }
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
  }
  num? _id;
  String? _title;
  dynamic _packageId;
  num? _price;
  bool? _common;
  String? _code;
  num? _categoryId;
  num? _order;
  dynamic _detailLog;
  dynamic _description;
  List<ServicesTable>? _servicesTable;
  dynamic _withBranches;
  dynamic _withoutBranches;
  List<dynamic>? _tags;
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
  String? _mongoDBId;
  Service copyWith({
    num? id,
    String? title,
    dynamic packageId,
    num? price,
    bool? common,
    String? code,
    num? categoryId,
    num? order,
    dynamic detailLog,
    dynamic description,
    List<ServicesTable>? servicesTable,
    dynamic withBranches,
    dynamic withoutBranches,
    List<dynamic>? tags,
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
    String? mongoDBId,
  }) =>
      Service(
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
      );
  num? get id => _id;
  String? get title => _title;
  dynamic get packageId => _packageId;
  num? get price => _price;
  bool? get common => _common;
  String? get code => _code;
  num? get categoryId => _categoryId;
  num? get order => _order;
  dynamic get detailLog => _detailLog;
  dynamic get description => _description;
  List<ServicesTable>? get servicesTable => _servicesTable;
  dynamic get withBranches => _withBranches;
  dynamic get withoutBranches => _withoutBranches;
  List<dynamic>? get tags => _tags;
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
  String? get mongoDBId => _mongoDBId;

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
    if (_tags != null) {
      map['tags'] = _tags?.map((v) => v.toJson()).toList();
    }
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
    return map;
  }
}

/// code : "TUIFEE00K2"
/// value : 1720

ServicesTable servicesTableFromJson(String str) =>
    ServicesTable.fromJson(json.decode(str));
String servicesTableToJson(ServicesTable data) => json.encode(data.toJson());

class ServicesTable {
  ServicesTable({
    String? code,
    num? value,
  }) {
    _code = code;
    _value = value;
  }

  ServicesTable.fromJson(dynamic json) {
    _code = json['code'];
    _value = json['value'];
  }
  String? _code;
  num? _value;
  ServicesTable copyWith({
    String? code,
    num? value,
  }) =>
      ServicesTable(
        code: code ?? _code,
        value: value ?? _value,
      );
  String? get code => _code;
  num? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['value'] = _value;
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
