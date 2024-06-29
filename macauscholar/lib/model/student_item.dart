import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/subscription_item.dart';
import 'package:storage/storage.dart';

/// id : 455
/// gender : null
/// branch : "B100010"
/// specialNeeds : null
/// number : "YL1010449"
/// appetite : 1
/// favourites : []
/// characters : []
/// phone : "11"
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
/// member : "b712999f-2ecd-11ef-97ee-02420aa8ac70"
/// registrationForm : null
/// joinAt : "2024-05-27T01:27:59.375Z"
/// mongoDBId : "zlP1XsZHNR"
/// referrerId : null
/// card : null
/// createdAt : "2023-02-20T09:41:04.895Z"
/// updatedAt : "2024-06-20T01:58:13.207Z"
/// deletedAt : null
/// school : {"id":15,"code":"S001","displayName":"聖公會(澳門)蔡高中學","order":0,"location":null,"mongoDBId":"6UPCW14kTs","createdAt":"2021-11-19T10:35:52.615Z","updatedAt":"2024-05-10T09:36:23.117Z","deletedAt":null}
/// schoolYear : {"id":20,"code":"p4","type":"primary","order":0,"displayName":"小四","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-05-10T09:37:51.984Z","deletedAt":null,"mongoDBId":"mmp7sFlK4B"}
/// subscription : [{"id":319,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00K3","label":"K3補習費","value":1800},{"code":"TUIMEAL200","label":"下午茶","value":280}],"price":2080,"realPrice":2080,"dateTo":null,"dateFrom":null,"serviceId":685,"title":"K3補習費+下午茶","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-14T06:50:54.668Z","updatedAt":"2024-06-14T06:50:54.668Z","deletedAt":null},{"id":320,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00P2","label":"小二補習費","value":1960},{"code":"TUIFEE00K2","label":"K2補習費","value":1720}],"price":3680,"realPrice":3680,"dateTo":null,"dateFrom":null,"serviceId":687,"title":"K2補習費+小二補習費","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-14T06:57:51.528Z","updatedAt":"2024-06-15T03:17:50.586Z","deletedAt":null},{"id":321,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00P2","label":"小二補習費","value":1960},{"code":"TUIFEE00K2","label":"K2補習費","value":1720}],"price":3680,"realPrice":3680,"dateTo":null,"dateFrom":null,"serviceId":687,"title":"K2補習費+小二補習費","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-15T06:54:28.549Z","updatedAt":"2024-06-15T06:54:28.549Z","deletedAt":null},{"id":322,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIMEAL200","label":"下午茶","value":280}],"price":280,"realPrice":280,"dateTo":null,"dateFrom":null,"serviceId":659,"title":"下午茶","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-15T09:09:07.882Z","updatedAt":"2024-06-15T09:09:19.132Z","deletedAt":null},{"id":323,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"TUIFEE00P2","label":"小二補習費","value":1960}],"price":1960,"realPrice":1960,"dateTo":null,"dateFrom":null,"serviceId":653,"title":"小二補習費","studentId":455,"mongoDBId":null,"authInfo":{"exp":1718673530,"iat":1718068730,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-15T09:15:26.499Z","updatedAt":"2024-06-15T09:15:26.499Z","deletedAt":null},{"id":324,"remark":null,"branch":"B100010","noDiscount":false,"servicesTable":[{"code":"1wEKrwZuv5:00100","label":"0125","value":1},{"code":"TUIMEAL200","label":"下午茶","value":280}],"price":281,"realPrice":281,"dateTo":null,"dateFrom":null,"serviceId":686,"title":"0125+下午茶","studentId":455,"mongoDBId":null,"authInfo":{"exp":1719278978,"iat":1718674178,"iss":"scholar","mid":"scholar","sub":"user.dev240600100519","uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"device":null,"provider":{"uid":"ZH1551","code":"wxwork","driver":"wxwork"}},"createdAt":"2024-06-19T05:20:41.452Z","updatedAt":"2024-06-19T05:20:41.452Z","deletedAt":null}]

StudentItem studentItemFromJson(String str) =>
    StudentItem.fromJson(json.decode(str));
String studentItemToJson(StudentItem data) => json.encode(data.toJson());

class StudentItem {
  StudentItem({
    num? id,
    dynamic gender,
    String? branch,
    dynamic specialNeeds,
    String? number,
    num? appetite,
    List<dynamic>? favourites,
    List<dynamic>? characters,
    String? phone,
    String? state,
    String? displayName,
    dynamic resultRecord,
    num? schoolYearId,
    dynamic balanceAccount,
    List<dynamic>? allergyDrugs,
    dynamic autoTransferAccount,
    dynamic enName,
    num? schoolId,
    List<dynamic>? allergyFoods,
    FileItem? avatar,
    List<dynamic>? parentRequirements,
    String? member,
    dynamic registrationForm,
    String? joinAt,
    String? birthday,
    String? mongoDBId,
    dynamic referrerId,
    dynamic card,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    SchoolItem? school,
    SchoolYearItem? schoolYear,
    List<Subscription>? subscription,
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
    _birthday = birthday;
    _mongoDBId = mongoDBId;
    _referrerId = referrerId;
    _card = card;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _school = school;
    _schoolYear = schoolYear;
    _subscription = subscription;
  }

  StudentItem.fromJson(dynamic json) {
    _id = json['id'];
    _gender = json['gender'];
    _branch = json['branch'];
    _specialNeeds = json['specialNeeds'];
    _number = json['number'];
    _appetite = json['appetite'];
    if (json['favourites'] != null) {
      _favourites = json['favourites'];
      // json['favourites'].forEach((v) {
      //   _favourites?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['characters'] != null) {
      _characters = json['characters'];
      // json['characters'].forEach((v) {
      //   _characters?.add(Dynamic.fromJson(v));
      // });
    }
    _phone = json['phone'];
    _state = json['state'];
    _displayName = json['displayName'];
    _resultRecord = json['resultRecord'];
    _schoolYearId = json['schoolYearId'];
    _balanceAccount = json['balanceAccount'];
    if (json['allergyDrugs'] != null) {
      _allergyDrugs = json['allergyDrugs'];
      // json['allergyDrugs'].forEach((v) {
      //   _allergyDrugs?.add(Dynamic.fromJson(v));
      // });
    }
    _autoTransferAccount = json['autoTransferAccount'];
    _enName = json['enName'];
    _schoolId = json['schoolId'];
    if (json['allergyFoods'] != null) {
      _allergyFoods = json['allergyFoods'];
      // json['allergyFoods'].forEach((v) {
      //   _allergyFoods?.add(Dynamic.fromJson(v));
      // });
    }
    _avatar = json['avatar'] != null ? FileItem.fromJson(json['avatar']) : null;
    if (json['parentRequirements'] != null) {
      _parentRequirements = json['parentRequirements'];
      // json['parentRequirements'].forEach((v) {
      //   _parentRequirements?.add(Dynamic.fromJson(v));
      // });
    }
    _member = json['member'];
    _registrationForm = json['registrationForm'];
    _joinAt = json['joinAt'];
    _birthday = json['birthday'];
    _mongoDBId = json['mongoDBId'];
    _referrerId = json['referrerId'];
    _card = json['card'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _school =
        json['school'] != null ? SchoolItem.fromJson(json['school']) : null;
    _schoolYear = json['schoolYear'] != null
        ? SchoolYearItem.fromJson(json['schoolYear'])
        : null;
    if (json['subscription'] != null) {
      _subscription = [];
      json['subscription'].forEach((v) {
        _subscription?.add(Subscription.fromJson(v));
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
  FileItem? _avatar;
  List<dynamic>? _parentRequirements;
  String? _member;
  dynamic _registrationForm;
  String? _joinAt;
  String? _birthday;
  String? _mongoDBId;
  dynamic _referrerId;
  dynamic _card;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  SchoolItem? _school;
  SchoolYearItem? _schoolYear;
  List<Subscription>? _subscription;
  StudentItem copyWith({
    num? id,
    dynamic gender,
    String? branch,
    dynamic specialNeeds,
    String? number,
    num? appetite,
    List<dynamic>? favourites,
    List<dynamic>? characters,
    String? phone,
    String? state,
    String? displayName,
    dynamic resultRecord,
    num? schoolYearId,
    dynamic balanceAccount,
    List<dynamic>? allergyDrugs,
    dynamic autoTransferAccount,
    dynamic enName,
    num? schoolId,
    List<dynamic>? allergyFoods,
    FileItem? avatar,
    List<dynamic>? parentRequirements,
    String? member,
    dynamic registrationForm,
    String? joinAt,
    String? birthday,
    String? mongoDBId,
    dynamic referrerId,
    dynamic card,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    SchoolItem? school,
    SchoolYearItem? schoolYear,
    List<Subscription>? subscription,
  }) =>
      StudentItem(
        id: id ?? _id,
        gender: gender ?? _gender,
        branch: branch ?? _branch,
        specialNeeds: specialNeeds ?? _specialNeeds,
        number: number ?? _number,
        appetite: appetite ?? _appetite,
        favourites: favourites ?? _favourites,
        characters: characters ?? _characters,
        phone: phone ?? _phone,
        state: state ?? _state,
        displayName: displayName ?? _displayName,
        resultRecord: resultRecord ?? _resultRecord,
        schoolYearId: schoolYearId ?? _schoolYearId,
        balanceAccount: balanceAccount ?? _balanceAccount,
        allergyDrugs: allergyDrugs ?? _allergyDrugs,
        autoTransferAccount: autoTransferAccount ?? _autoTransferAccount,
        enName: enName ?? _enName,
        schoolId: schoolId ?? _schoolId,
        allergyFoods: allergyFoods ?? _allergyFoods,
        avatar: avatar ?? _avatar,
        parentRequirements: parentRequirements ?? _parentRequirements,
        member: member ?? _member,
        registrationForm: registrationForm ?? _registrationForm,
        joinAt: joinAt ?? _joinAt,
        birthday: birthday ?? _birthday,
        mongoDBId: mongoDBId ?? _mongoDBId,
        referrerId: referrerId ?? _referrerId,
        card: card ?? _card,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        school: school ?? _school,
        schoolYear: schoolYear ?? _schoolYear,
        subscription: subscription ?? _subscription,
      );
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
  FileItem? get avatar => _avatar;
  List<dynamic>? get parentRequirements => _parentRequirements;
  String? get member => _member;
  dynamic get registrationForm => _registrationForm;
  String? get joinAt => _joinAt;
  String? get birthday => _birthday;
  String? get mongoDBId => _mongoDBId;
  dynamic get referrerId => _referrerId;
  dynamic get card => _card;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  SchoolItem? get school => _school;
  SchoolYearItem? get schoolYear => _schoolYear;
  List<Subscription>? get subscription => _subscription;

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
    map['avatar'] = _avatar?.toJson();

    if (_parentRequirements != null) {
      map['parentRequirements'] =
          _parentRequirements?.map((v) => v.toJson()).toList();
    }
    map['member'] = _member;
    map['registrationForm'] = _registrationForm;
    map['joinAt'] = _joinAt;
    map['birthday'] = _birthday;
    map['mongoDBId'] = _mongoDBId;
    map['referrerId'] = _referrerId;
    map['card'] = _card;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    if (_school != null) {
      map['school'] = _school?.toJson();
    }
    if (_schoolYear != null) {
      map['schoolYear'] = _schoolYear?.toJson();
    }
    if (_subscription != null) {
      map['subscription'] = _subscription?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
