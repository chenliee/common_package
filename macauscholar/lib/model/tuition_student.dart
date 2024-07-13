import 'dart:convert';

import 'package:macauscholar/model/employee_item.dart';
import 'package:macauscholar/model/subscription_item.dart';

/// id : 455
/// gender : null
/// branch : "B0000013"
/// specialNeeds : null
/// number : "YL1010449"
/// appetite : 1
/// favourites : []
/// characters : []
/// phone : "法國電"
/// state : "active"
/// displayName : "賀子喬"
/// resultRecord : null
/// schoolYearId : 20
/// balanceAccount : null
/// allergyDrugs : []
/// autoTransferAccount : null
/// enName : null
/// schoolId : 15
/// allergyFoods : []
/// avatar : null
/// parentRequirements : []
/// member : null
/// registrationForm : null
/// joinAt : "2024-05-27T01:27:59.375Z"
/// mongoDBId : "zlP1XsZHNR"
/// birthday : null
/// referrerId : 454
/// card : null
/// createdAt : "2023-02-20T09:41:04.895Z"
/// updatedAt : "2024-06-26T03:16:07.653Z"
/// deletedAt : null
/// school : {"id":15,"code":"S001","displayName":"聖公會(澳門)蔡高中學","order":0,"location":null,"mongoDBId":"6UPCW14kTs","createdAt":"2021-11-19T10:35:52.615Z","updatedAt":"2024-05-10T09:36:23.117Z","deletedAt":null}
/// schoolYear : {"id":20,"code":"p4","type":"primary","order":0,"displayName":"小四","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-05-10T09:37:51.984Z","deletedAt":null,"mongoDBId":"mmp7sFlK4B"}
/// subscription : [{"id":319,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00K3","label":"K3補習費","value":1800},{"code":"TUIMEAL200","label":"下午茶","value":280}],"price":2080,"realPrice":2080,"dateTo":null,"dateFrom":null,"serviceId":685,"title":"K3補習費+下午茶","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-14T06:50:54.668Z","updatedAt":"2024-06-14T06:50:54.668Z","deletedAt":null},{"id":320,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00P2","label":"小二補習費","value":1960},{"code":"TUIFEE00K2","label":"K2補習費","value":1720}],"price":3680,"realPrice":3680,"dateTo":null,"dateFrom":null,"serviceId":687,"title":"K2補習費+小二補習費","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-14T06:57:51.528Z","updatedAt":"2024-06-15T03:17:50.586Z","deletedAt":null},{"id":321,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00P2","label":"小二補習費","value":1960},{"code":"TUIFEE00K2","label":"K2補習費","value":1720}],"price":3680,"realPrice":3680,"dateTo":null,"dateFrom":null,"serviceId":687,"title":"K2補習費+小二補習費","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-15T06:54:28.549Z","updatedAt":"2024-06-15T06:54:28.549Z","deletedAt":null},{"id":322,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIMEAL200","label":"下午茶","value":280}],"price":280,"realPrice":280,"dateTo":null,"dateFrom":null,"serviceId":659,"title":"下午茶","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-15T09:09:07.882Z","updatedAt":"2024-06-15T09:09:19.132Z","deletedAt":null},{"id":323,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00P2","label":"小二補習費","value":1960}],"price":1960,"realPrice":1960,"dateTo":null,"dateFrom":null,"serviceId":653,"title":"小二補習費","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-15T09:15:26.499Z","updatedAt":"2024-06-25T03:49:55.043Z","deletedAt":null},{"id":324,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"1wEKrwZuv5:00100","label":"0125","value":1},{"code":"TUIMEAL200","label":"下午茶","value":281}],"price":281,"realPrice":281,"dateTo":"2024-06-24T00:00:00.000Z","dateFrom":null,"serviceId":686,"title":"0125+下午茶","studentId":455,"mongoDBId":null,"authInfo":{"exp":1719278978,"iat":1718674178,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-19T05:20:41.452Z","updatedAt":"2024-06-25T03:44:33.136Z","deletedAt":null},{"id":325,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00K3","label":"K3補習費","value":1800},{"code":"TUIMEAL200","label":"下午茶","value":281}],"price":2080,"realPrice":2081,"dateTo":"2024-06-22T00:00:00.000Z","dateFrom":null,"serviceId":685,"title":"K3補習費+下午茶","studentId":455,"mongoDBId":null,"authInfo":{"exp":1719278978,"iat":1718674178,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-24T09:39:53.183Z","updatedAt":"2024-06-25T03:05:29.593Z","deletedAt":null}]

TuitionStudent tuitionStudentFromJson(String str) => TuitionStudent.fromJson(json.decode(str));
String tuitionStudentToJson(TuitionStudent data) => json.encode(data.toJson());

class TuitionStudent {
  TuitionStudent({
    num? id,
    dynamic gender,
    String? branch,
    dynamic specialNeeds,
    String? number,
    num? appetite,
    dynamic favourites,
    dynamic characters,
    String? phone,
    String? state,
    String? displayName,
    dynamic resultRecord,
    num? schoolYearId,
    dynamic balanceAccount,
    dynamic allergyDrugs,
    dynamic autoTransferAccount,
    dynamic enName,
    num? schoolId,
    dynamic allergyFoods,
    dynamic avatar,
    dynamic parentRequirements,
    dynamic member,
    dynamic registrationForm,
    String? joinAt,
    String? mongoDBId,
    dynamic birthday,
    num? referrerId,
    dynamic card,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    School? school,
    SchoolYear? schoolYear,
    List<SubscriptionItem>? subscription,
    List<EmployeeItem>? employee,
    dynamic latestSigns,
  }) {
    _id = id;
    _gender = gender;
    _branch = branch;
    _specialNeeds = specialNeeds;
    _number = number;
    _appetite = appetite;
    _favourites = favourites;
    _characters = characters;
    _phone = phone;
    _state = state;
    _displayName = displayName;
    _resultRecord = resultRecord;
    _schoolYearId = schoolYearId;
    _balanceAccount = balanceAccount;
    _allergyDrugs = allergyDrugs;
    _autoTransferAccount = autoTransferAccount;
    _enName = enName;
    _schoolId = schoolId;
    _allergyFoods = allergyFoods;
    _avatar = avatar;
    _parentRequirements = parentRequirements;
    _member = member;
    _registrationForm = registrationForm;
    _joinAt = joinAt;
    _mongoDBId = mongoDBId;
    _birthday = birthday;
    _referrerId = referrerId;
    _card = card;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _school = school;
    _schoolYear = schoolYear;
    _subscription = subscription;
    _employee = employee;
    _latestSigns = latestSigns;
  }

  TuitionStudent.fromJson(dynamic json) {
    _id = json['id'];
    _gender = json['gender'];
    _branch = json['branch'];
    _specialNeeds = json['specialNeeds'];
    _number = json['number'];
    _appetite = json['appetite'];
    _favourites = json['favourites'];
    _characters = json['characters'];

    _phone = json['phone'];
    _state = json['state'];
    _displayName = json['displayName'];
    _resultRecord = json['resultRecord'];
    _schoolYearId = json['schoolYearId'];
    _balanceAccount = json['balanceAccount'];
    _allergyDrugs = json['allergyDrugs'];

    _autoTransferAccount = json['autoTransferAccount'];
    _enName = json['enName'];
    _schoolId = json['schoolId'];
    _allergyFoods = json['allergyFoods'];

    _avatar = json['avatar'];
    _parentRequirements = json['parentRequirements'];

    _member = json['member'];
    _registrationForm = json['registrationForm'];
    _joinAt = json['joinAt'];
    _mongoDBId = json['mongoDBId'];
    _birthday = json['birthday'];
    _referrerId = json['referrerId'];
    _card = json['card'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _latestSigns = json['latestSigns'];
    _school = json['school'] != null ? School.fromJson(json['school']) : null;
    _schoolYear = json['schoolYear'] != null ? SchoolYear.fromJson(json['schoolYear']) : null;
    if (json['subscription'] != null) {
      _subscription = [];
      json['subscription'].forEach((v) {
        _subscription?.add(SubscriptionItem.fromJson(v));
      });
    }
    if (json['employee'] != null) {
      _employee = [];
      json['employee'].forEach((v) {
        _employee?.add(EmployeeItem.fromJson(v));
      });
    }
  }
  num? _id;
  dynamic _gender;
  String? _branch;
  dynamic _specialNeeds;
  String? _number;
  num? _appetite;
  List<dynamic>? _favourites;
  List<dynamic>? _characters;
  String? _phone;
  String? _state;
  String? _displayName;
  dynamic _resultRecord;
  num? _schoolYearId;
  dynamic _balanceAccount;
  List<dynamic>? _allergyDrugs;
  dynamic _autoTransferAccount;
  dynamic _enName;
  num? _schoolId;
  List<dynamic>? _allergyFoods;
  dynamic _avatar;
  List<dynamic>? _parentRequirements;
  dynamic _member;
  dynamic _registrationForm;
  String? _joinAt;
  String? _mongoDBId;
  dynamic _birthday;
  num? _referrerId;
  dynamic _card;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  dynamic _latestSigns;
  School? _school;
  SchoolYear? _schoolYear;
  List<SubscriptionItem>? _subscription;
  List<EmployeeItem>? _employee;

  num? get id => _id;
  dynamic get gender => _gender;
  String? get branch => _branch;
  dynamic get specialNeeds => _specialNeeds;
  String? get number => _number;
  num? get appetite => _appetite;
  List<dynamic>? get favourites => _favourites;
  List<dynamic>? get characters => _characters;
  String? get phone => _phone;
  String? get state => _state;
  String? get displayName => _displayName;
  dynamic get resultRecord => _resultRecord;
  num? get schoolYearId => _schoolYearId;
  dynamic get balanceAccount => _balanceAccount;
  List<dynamic>? get allergyDrugs => _allergyDrugs;
  dynamic get autoTransferAccount => _autoTransferAccount;
  dynamic get enName => _enName;
  num? get schoolId => _schoolId;
  List<dynamic>? get allergyFoods => _allergyFoods;
  dynamic get avatar => _avatar;
  List<dynamic>? get parentRequirements => _parentRequirements;
  dynamic get member => _member;
  dynamic get registrationForm => _registrationForm;
  String? get joinAt => _joinAt;
  String? get mongoDBId => _mongoDBId;
  dynamic get birthday => _birthday;
  num? get referrerId => _referrerId;
  dynamic get card => _card;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  dynamic get latestSigns => _latestSigns;
  School? get school => _school;
  SchoolYear? get schoolYear => _schoolYear;
  List<SubscriptionItem>? get subscription => _subscription;
  List<EmployeeItem>? get employee => _employee;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['gender'] = _gender;
    map['branch'] = _branch;
    map['specialNeeds'] = _specialNeeds;
    map['number'] = _number;
    map['appetite'] = _appetite;
    if (_favourites != null) {
      map['favourites'] = _favourites?.map((v) => v.toJson()).toList();
    }
    if (_characters != null) {
      map['characters'] = _characters?.map((v) => v.toJson()).toList();
    }
    map['phone'] = _phone;
    map['state'] = _state;
    map['displayName'] = _displayName;
    map['resultRecord'] = _resultRecord;
    map['schoolYearId'] = _schoolYearId;
    map['balanceAccount'] = _balanceAccount;
    if (_allergyDrugs != null) {
      map['allergyDrugs'] = _allergyDrugs?.map((v) => v.toJson()).toList();
    }
    map['autoTransferAccount'] = _autoTransferAccount;
    map['enName'] = _enName;
    map['schoolId'] = _schoolId;
    if (_allergyFoods != null) {
      map['allergyFoods'] = _allergyFoods?.map((v) => v.toJson()).toList();
    }
    map['avatar'] = _avatar;
    if (_parentRequirements != null) {
      map['parentRequirements'] = _parentRequirements?.map((v) => v.toJson()).toList();
    }
    map['member'] = _member;
    map['registrationForm'] = _registrationForm;
    map['joinAt'] = _joinAt;
    map['mongoDBId'] = _mongoDBId;
    map['birthday'] = _birthday;
    map['referrerId'] = _referrerId;
    map['card'] = _card;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['latestSigns'] = _latestSigns;
    if (_school != null) {
      map['school'] = _school?.toJson();
    }
    if (_schoolYear != null) {
      map['schoolYear'] = _schoolYear?.toJson();
    }
    if (_subscription != null) {
      map['subscription'] = _subscription?.map((v) => v.toJson()).toList();
    }
    if (_employee != null) {
      map['employee'] = _employee?.map((v) => v.toJson()).toList();
    }
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
    _provider = json['provider'] != null ? Provider.fromJson(json['provider']) : null;
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

ServicesTable servicesTableFromJson(String str) => ServicesTable.fromJson(json.decode(str));
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

/// id : 20
/// code : "p4"
/// type : "primary"
/// order : 0
/// displayName : "小四"
/// createdAt : "2021-11-19T10:35:53.799Z"
/// updatedAt : "2024-05-10T09:37:51.984Z"
/// deletedAt : null
/// mongoDBId : "mmp7sFlK4B"

SchoolYear schoolYearFromJson(String str) => SchoolYear.fromJson(json.decode(str));
String schoolYearToJson(SchoolYear data) => json.encode(data.toJson());

class SchoolYear {
  SchoolYear({
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

  SchoolYear.fromJson(dynamic json) {
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

/// id : 15
/// code : "S001"
/// displayName : "聖公會(澳門)蔡高中學"
/// order : 0
/// location : null
/// mongoDBId : "6UPCW14kTs"
/// createdAt : "2021-11-19T10:35:52.615Z"
/// updatedAt : "2024-05-10T09:36:23.117Z"
/// deletedAt : null

School schoolFromJson(String str) => School.fromJson(json.decode(str));
String schoolToJson(School data) => json.encode(data.toJson());

class School {
  School({
    num? id,
    String? code,
    String? displayName,
    num? order,
    dynamic location,
    String? mongoDBId,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) {
    _id = id;
    _code = code;
    _displayName = displayName;
    _order = order;
    _location = location;
    _mongoDBId = mongoDBId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
  }

  School.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _displayName = json['displayName'];
    _order = json['order'];
    _location = json['location'];
    _mongoDBId = json['mongoDBId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  String? _code;
  String? _displayName;
  num? _order;
  dynamic _location;
  String? _mongoDBId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;

  num? get id => _id;
  String? get code => _code;
  String? get displayName => _displayName;
  num? get order => _order;
  dynamic get location => _location;
  String? get mongoDBId => _mongoDBId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['displayName'] = _displayName;
    map['order'] = _order;
    map['location'] = _location;
    map['mongoDBId'] = _mongoDBId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    return map;
  }
}
