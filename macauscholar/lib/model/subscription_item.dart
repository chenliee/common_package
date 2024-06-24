import 'dart:convert';

/// id : 319
/// remark : null
/// branch : "B100010"
/// noDiscount : false
/// servicesTable : [{"code":"TUIFEE00K3","label":"K3補習費","value":1800},{"code":"TUIMEAL200","label":"下午茶","value":280}]
/// price : 2080
/// realPrice : 2080
/// dateTo : null
/// dateFrom : null
/// serviceId : 685
/// title : "K3補習費+下午茶"
/// studentId : 455
/// mongoDBId : null
/// authInfo : {"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}}
/// createdAt : "2024-06-14T06:50:54.668Z"
/// updatedAt : "2024-06-14T06:50:54.668Z"
/// deletedAt : null

Subscription subscriptionFromJson(String str) =>
    Subscription.fromJson(json.decode(str));
String subscriptionToJson(Subscription data) => json.encode(data.toJson());

class Subscription {
  Subscription({
    num? id,
    dynamic remark,
    String? branch,
    bool? noDiscount,
    List<ServicesTable>? servicesTable,
    num? price,
    num? realPrice,
    dynamic dateTo,
    dynamic dateFrom,
    num? serviceId,
    String? title,
    num? studentId,
    dynamic mongoDBId,
    AuthInfo? authInfo,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) {
    _id = id;
    _remark = remark;
    _branch = branch;
    _noDiscount = noDiscount;
    _servicesTable = servicesTable;
    _price = price;
    _realPrice = realPrice;
    _dateTo = dateTo;
    _dateFrom = dateFrom;
    _serviceId = serviceId;
    _title = title;
    _studentId = studentId;
    _mongoDBId = mongoDBId;
    _authInfo = authInfo;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
  }

  Subscription.fromJson(dynamic json) {
    _id = json['id'];
    _remark = json['remark'];
    _branch = json['branch'];
    _noDiscount = json['noDiscount'];
    if (json['servicesTable'] != null) {
      _servicesTable = [];
      json['servicesTable'].forEach((v) {
        _servicesTable?.add(ServicesTable.fromJson(v));
      });
    }
    _price = json['price'];
    _realPrice = json['realPrice'];
    _dateTo = json['dateTo'];
    _dateFrom = json['dateFrom'];
    _serviceId = json['serviceId'];
    _title = json['title'];
    _studentId = json['studentId'];
    _mongoDBId = json['mongoDBId'];
    _authInfo =
        json['authInfo'] != null ? AuthInfo.fromJson(json['authInfo']) : null;
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  dynamic _remark;
  String? _branch;
  bool? _noDiscount;
  List<ServicesTable>? _servicesTable;
  num? _price;
  num? _realPrice;
  dynamic _dateTo;
  dynamic _dateFrom;
  num? _serviceId;
  String? _title;
  num? _studentId;
  dynamic _mongoDBId;
  AuthInfo? _authInfo;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  Subscription copyWith({
    num? id,
    dynamic remark,
    String? branch,
    bool? noDiscount,
    List<ServicesTable>? servicesTable,
    num? price,
    num? realPrice,
    dynamic dateTo,
    dynamic dateFrom,
    num? serviceId,
    String? title,
    num? studentId,
    dynamic mongoDBId,
    AuthInfo? authInfo,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) =>
      Subscription(
        id: id ?? _id,
        remark: remark ?? _remark,
        branch: branch ?? _branch,
        noDiscount: noDiscount ?? _noDiscount,
        servicesTable: servicesTable ?? _servicesTable,
        price: price ?? _price,
        realPrice: realPrice ?? _realPrice,
        dateTo: dateTo ?? _dateTo,
        dateFrom: dateFrom ?? _dateFrom,
        serviceId: serviceId ?? _serviceId,
        title: title ?? _title,
        studentId: studentId ?? _studentId,
        mongoDBId: mongoDBId ?? _mongoDBId,
        authInfo: authInfo ?? _authInfo,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
      );
  num? get id => _id;
  dynamic get remark => _remark;
  String? get branch => _branch;
  bool? get noDiscount => _noDiscount;
  List<ServicesTable>? get servicesTable => _servicesTable;
  num? get price => _price;
  num? get realPrice => _realPrice;
  dynamic get dateTo => _dateTo;
  dynamic get dateFrom => _dateFrom;
  num? get serviceId => _serviceId;
  String? get title => _title;
  num? get studentId => _studentId;
  dynamic get mongoDBId => _mongoDBId;
  AuthInfo? get authInfo => _authInfo;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['remark'] = _remark;
    map['branch'] = _branch;
    map['noDiscount'] = _noDiscount;
    if (_servicesTable != null) {
      map['servicesTable'] = _servicesTable?.map((v) => v.toJson()).toList();
    }
    map['price'] = _price;
    map['realPrice'] = _realPrice;
    map['dateTo'] = _dateTo;
    map['dateFrom'] = _dateFrom;
    map['serviceId'] = _serviceId;
    map['title'] = _title;
    map['studentId'] = _studentId;
    map['mongoDBId'] = _mongoDBId;
    if (_authInfo != null) {
      map['authInfo'] = _authInfo?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    return map;
  }
}

/// exp : 1718673530
/// iat : 1718068730
/// iss : "scholar"
/// mid : "scholar"
/// sub : "user.dev240600100519"
/// uid : "9e0e456f-3013-464c-8be7-cfe27704a988"
/// rules : ["employee"]
/// device : null
/// provider : {"uid":"ZH1551","code":"wxwork","driver":"wxwork"}

AuthInfo authInfoFromJson(String str) => AuthInfo.fromJson(json.decode(str));
String authInfoToJson(AuthInfo data) => json.encode(data.toJson());

class AuthInfo {
  AuthInfo({
    num? exp,
    num? iat,
    String? iss,
    String? mid,
    String? sub,
    String? uid,
    List<String>? rules,
    dynamic device,
    Provider? provider,
  }) {
    _exp = exp;
    _iat = iat;
    _iss = iss;
    _mid = mid;
    _sub = sub;
    _uid = uid;
    _rules = rules;
    _device = device;
    _provider = provider;
  }

  AuthInfo.fromJson(dynamic json) {
    _exp = json['exp'];
    _iat = json['iat'];
    _iss = json['iss'];
    _mid = json['mid'];
    _sub = json['sub'];
    _uid = json['uid'];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    _device = json['device'];
    _provider =
        json['provider'] != null ? Provider.fromJson(json['provider']) : null;
  }
  num? _exp;
  num? _iat;
  String? _iss;
  String? _mid;
  String? _sub;
  String? _uid;
  List<String>? _rules;
  dynamic _device;
  Provider? _provider;
  AuthInfo copyWith({
    num? exp,
    num? iat,
    String? iss,
    String? mid,
    String? sub,
    String? uid,
    List<String>? rules,
    dynamic device,
    Provider? provider,
  }) =>
      AuthInfo(
        exp: exp ?? _exp,
        iat: iat ?? _iat,
        iss: iss ?? _iss,
        mid: mid ?? _mid,
        sub: sub ?? _sub,
        uid: uid ?? _uid,
        rules: rules ?? _rules,
        device: device ?? _device,
        provider: provider ?? _provider,
      );
  num? get exp => _exp;
  num? get iat => _iat;
  String? get iss => _iss;
  String? get mid => _mid;
  String? get sub => _sub;
  String? get uid => _uid;
  List<String>? get rules => _rules;
  dynamic get device => _device;
  Provider? get provider => _provider;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['exp'] = _exp;
    map['iat'] = _iat;
    map['iss'] = _iss;
    map['mid'] = _mid;
    map['sub'] = _sub;
    map['uid'] = _uid;
    map['rules'] = _rules;
    map['device'] = _device;
    if (_provider != null) {
      map['provider'] = _provider?.toJson();
    }
    return map;
  }
}

/// uid : "ZH1551"
/// code : "wxwork"
/// driver : "wxwork"

Provider providerFromJson(String str) => Provider.fromJson(json.decode(str));
String providerToJson(Provider data) => json.encode(data.toJson());

class Provider {
  Provider({
    String? uid,
    String? code,
    String? driver,
  }) {
    _uid = uid;
    _code = code;
    _driver = driver;
  }

  Provider.fromJson(dynamic json) {
    _uid = json['uid'];
    _code = json['code'];
    _driver = json['driver'];
  }
  String? _uid;
  String? _code;
  String? _driver;
  Provider copyWith({
    String? uid,
    String? code,
    String? driver,
  }) =>
      Provider(
        uid: uid ?? _uid,
        code: code ?? _code,
        driver: driver ?? _driver,
      );
  String? get uid => _uid;
  String? get code => _code;
  String? get driver => _driver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uid'] = _uid;
    map['code'] = _code;
    map['driver'] = _driver;
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
