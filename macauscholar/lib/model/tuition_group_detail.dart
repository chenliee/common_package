import 'dart:convert';
/// id : 3
/// userId : 1
/// name : "我的"
/// branch : null
/// description : null
/// createdAt : "2024-07-02T05:39:44.098Z"
/// updatedAt : "2024-07-03T02:44:06.491Z"
/// user : {"id":1,"uid":"9e0e456f-3013-464c-8be7-cfe27704a988","rules":["employee"],"createdAt":"2024-07-01T06:00:14.789Z","updatedAt":"2024-07-01T06:00:14.789Z"}
/// student : [{"id":1,"gender":null,"branch":"B0000879","specialNeeds":null,"number":"YL010015","appetite":1,"favourites":null,"characters":null,"phone":null,"state":"active","displayName":"小李","resultRecord":null,"schoolYearId":5,"balanceAccount":null,"allergyDrugs":null,"autoTransferAccount":null,"enName":null,"schoolId":103,"allergyFoods":null,"avatar":null,"parentRequirements":null,"member":"","registrationForm":null,"joinAt":null,"mongoDBId":"04AmDHdE2o","birthday":null,"referrerId":null,"card":null,"createdAt":"2022-08-31T09:02:11.766Z","updatedAt":"2024-05-10T09:54:33.799Z","deletedAt":null}]

TuitionGroupDetail tuitionGroupDetailFromJson(String str) => TuitionGroupDetail.fromJson(json.decode(str));
String tuitionGroupDetailToJson(TuitionGroupDetail data) => json.encode(data.toJson());
class TuitionGroupDetail {
  TuitionGroupDetail({
      num? id, 
      num? userId, 
      String? name, 
      dynamic branch, 
      dynamic description, 
      String? createdAt, 
      String? updatedAt, 
      User? user, 
      List<Student>? student,}){
    _id = id;
    _userId = userId;
    _name = name;
    _branch = branch;
    _description = description;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _user = user;
    _student = student;
}

  TuitionGroupDetail.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _name = json['name'];
    _branch = json['branch'];
    _description = json['description'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['student'] != null) {
      _student = [];
      json['student'].forEach((v) {
        _student?.add(Student.fromJson(v));
      });
    }
  }
  num? _id;
  num? _userId;
  String? _name;
  dynamic _branch;
  dynamic _description;
  String? _createdAt;
  String? _updatedAt;
  User? _user;
  List<Student>? _student;

  num? get id => _id;
  num? get userId => _userId;
  String? get name => _name;
  dynamic get branch => _branch;
  dynamic get description => _description;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  User? get user => _user;
  List<Student>? get student => _student;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['name'] = _name;
    map['branch'] = _branch;
    map['description'] = _description;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_student != null) {
      map['student'] = _student?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// gender : null
/// branch : "B0000879"
/// specialNeeds : null
/// number : "YL010015"
/// appetite : 1
/// favourites : null
/// characters : null
/// phone : null
/// state : "active"
/// displayName : "小李"
/// resultRecord : null
/// schoolYearId : 5
/// balanceAccount : null
/// allergyDrugs : null
/// autoTransferAccount : null
/// enName : null
/// schoolId : 103
/// allergyFoods : null
/// avatar : null
/// parentRequirements : null
/// member : ""
/// registrationForm : null
/// joinAt : null
/// mongoDBId : "04AmDHdE2o"
/// birthday : null
/// referrerId : null
/// card : null
/// createdAt : "2022-08-31T09:02:11.766Z"
/// updatedAt : "2024-05-10T09:54:33.799Z"
/// deletedAt : null

Student studentFromJson(String str) => Student.fromJson(json.decode(str));
String studentToJson(Student data) => json.encode(data.toJson());
class Student {
  Student({
      num? id, 
      dynamic gender, 
      String? branch, 
      dynamic specialNeeds, 
      String? number, 
      num? appetite, 
      dynamic favourites, 
      dynamic characters, 
      dynamic phone, 
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
      String? member, 
      dynamic registrationForm, 
      dynamic joinAt, 
      String? mongoDBId, 
      dynamic birthday, 
      dynamic referrerId, 
      dynamic card, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt,}){
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
}

  Student.fromJson(dynamic json) {
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
  }
  num? _id;
  dynamic _gender;
  String? _branch;
  dynamic _specialNeeds;
  String? _number;
  num? _appetite;
  dynamic _favourites;
  dynamic _characters;
  dynamic _phone;
  String? _state;
  String? _displayName;
  dynamic _resultRecord;
  num? _schoolYearId;
  dynamic _balanceAccount;
  dynamic _allergyDrugs;
  dynamic _autoTransferAccount;
  dynamic _enName;
  num? _schoolId;
  dynamic _allergyFoods;
  dynamic _avatar;
  dynamic _parentRequirements;
  String? _member;
  dynamic _registrationForm;
  dynamic _joinAt;
  String? _mongoDBId;
  dynamic _birthday;
  dynamic _referrerId;
  dynamic _card;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;

  num? get id => _id;
  dynamic get gender => _gender;
  String? get branch => _branch;
  dynamic get specialNeeds => _specialNeeds;
  String? get number => _number;
  num? get appetite => _appetite;
  dynamic get favourites => _favourites;
  dynamic get characters => _characters;
  dynamic get phone => _phone;
  String? get state => _state;
  String? get displayName => _displayName;
  dynamic get resultRecord => _resultRecord;
  num? get schoolYearId => _schoolYearId;
  dynamic get balanceAccount => _balanceAccount;
  dynamic get allergyDrugs => _allergyDrugs;
  dynamic get autoTransferAccount => _autoTransferAccount;
  dynamic get enName => _enName;
  num? get schoolId => _schoolId;
  dynamic get allergyFoods => _allergyFoods;
  dynamic get avatar => _avatar;
  dynamic get parentRequirements => _parentRequirements;
  String? get member => _member;
  dynamic get registrationForm => _registrationForm;
  dynamic get joinAt => _joinAt;
  String? get mongoDBId => _mongoDBId;
  dynamic get birthday => _birthday;
  dynamic get referrerId => _referrerId;
  dynamic get card => _card;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['gender'] = _gender;
    map['branch'] = _branch;
    map['specialNeeds'] = _specialNeeds;
    map['number'] = _number;
    map['appetite'] = _appetite;
    map['favourites'] = _favourites;
    map['characters'] = _characters;
    map['phone'] = _phone;
    map['state'] = _state;
    map['displayName'] = _displayName;
    map['resultRecord'] = _resultRecord;
    map['schoolYearId'] = _schoolYearId;
    map['balanceAccount'] = _balanceAccount;
    map['allergyDrugs'] = _allergyDrugs;
    map['autoTransferAccount'] = _autoTransferAccount;
    map['enName'] = _enName;
    map['schoolId'] = _schoolId;
    map['allergyFoods'] = _allergyFoods;
    map['avatar'] = _avatar;
    map['parentRequirements'] = _parentRequirements;
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
    return map;
  }

}

/// id : 1
/// uid : "9e0e456f-3013-464c-8be7-cfe27704a988"
/// rules : ["employee"]
/// createdAt : "2024-07-01T06:00:14.789Z"
/// updatedAt : "2024-07-01T06:00:14.789Z"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      num? id, 
      String? uid, 
      List<String>? rules, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _uid = uid;
    _rules = rules;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _uid = json['uid'];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _uid;
  List<String>? _rules;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get uid => _uid;
  List<String>? get rules => _rules;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uid'] = _uid;
    map['rules'] = _rules;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}