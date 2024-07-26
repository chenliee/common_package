import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// id : 211
/// gender : "f"
/// branch : "B0000822"
/// readTime : "2024-07-19T00:00:00.000Z"
/// form : null
/// studentName : "IT測試使用"
/// number : "d012ca09-f9aa-4e76-8fd7-69c956023a41"
/// handler : null
/// consult : null
/// phone : "25635159"
/// orderId : null
/// clause : null
/// way : "moblie"
/// state : "init"
/// guardianId : null
/// schoolYearId : 23
/// schoolId : 15
/// studentId : 24
/// parentName : "jj"
/// member : "SS220005"
/// relationId : null
/// birthday : null
/// referrer : null
/// mongoDBId : null
/// payMessage : null
/// enableTransfer : false
/// createdAt : "2024-07-19T02:53:13.478Z"
/// updatedAt : "2024-07-19T02:53:13.478Z"
/// deletedAt : null
/// school : {"id":15,"code":"S001","displayName":"聖公會(澳門)蔡高中學","order":0,"location":null,"mongoDBId":"6UPCW14kTs","createdAt":"2021-11-19T10:35:52.615Z","updatedAt":"2024-05-10T09:36:23.117Z","deletedAt":null}
/// needService : [{"id":387,"title":"K2一條龍","packageId":2,"price":2810,"common":false,"code":"T2ZhXXfkND:TUICHG0001+TUIFEE00K2+TUIMEAL001+TUIMEAL200","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K2","label":"K2補習費","value":1720},{"code":"TUIMEAL200","label":"下午茶","value":280},{"code":"TUIMEAL001","label":"星期一至五午膳","value":670},{"code":"TUICHG0001","label":"清潔／影印雜費","value":140}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2023-05-23T05:33:06.985Z","updatedAt":"2024-06-04T02:33:50.881Z","deletedAt":null,"mongoDBId":"XGpPdC5tGy"}]
/// schoolYear : {"id":23,"code":"k2","type":"nursery","order":0,"displayName":"K2","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-05-17T05:07:28.956Z","deletedAt":null,"mongoDBId":"wvWZyIGkLe"}
/// student : {"id":24,"gender":null,"branch":"B0000017","specialNeeds":null,"number":"SS220005","appetite":1,"favourites":[],"characters":[],"phone":"25635159","state":"active","displayName":"IT測試使用","resultRecord":null,"schoolYearId":23,"balanceAccount":null,"allergyDrugs":[],"autoTransferAccount":null,"enName":null,"schoolId":15,"allergyFoods":[],"avatar":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/3cd5984812da9432f624ab760fb793465ec674650bb603f51d7c009247d9ec2096455a1c3fbb755fa67b56247c7727d7003df95d2b0c1abd966c6551b52c5a02.png","name":"454382f58acfd8f3534c3b872063e332_logo -儒林 (1).png","__type":"File"},"parentRequirements":[],"member":"SS220005","registrationForm":null,"joinAt":"2022-08-31T16:00:00.000Z","mongoDBId":"5lAYfSj5cy","birthday":null,"referrerId":null,"card":null,"createdAt":"2022-09-01T06:39:25.073Z","updatedAt":"2024-05-10T09:56:48.607Z","deletedAt":null}
/// guardian : null

TuitionEnrollmentItem tuitionEnrollmentItemFromJson(String str) =>
    TuitionEnrollmentItem.fromJson(json.decode(str));
String tuitionEnrollmentItemToJson(TuitionEnrollmentItem data) =>
    json.encode(data.toJson());

class TuitionEnrollmentItem {
  TuitionEnrollmentItem({
    num? id,
    String? gender,
    String? branch,
    String? readTime,
    dynamic form,
    String? studentName,
    String? number,
    dynamic handler,
    dynamic consult,
    String? phone,
    dynamic orderId,
    dynamic clause,
    String? way,
    String? state,
    dynamic guardianId,
    num? schoolYearId,
    num? schoolId,
    num? studentId,
    String? parentName,
    String? member,
    dynamic relationId,
    dynamic birthday,
    dynamic referrer,
    dynamic mongoDBId,
    dynamic payMessage,
    bool? enableTransfer,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    SchoolItem? school,
    List<ServiceItem>? needService,
    SchoolYearItem? schoolYear,
    StudentItem? student,
    dynamic guardian,
  }) {
    _id = id;
    _gender = gender;
    _branch = branch;
    _readTime = readTime;
    _form = form;
    _studentName = studentName;
    _number = number;
    _handler = handler;
    _consult = consult;
    _phone = phone;
    _orderId = orderId;
    _clause = clause;
    _way = way;
    _state = state;
    _guardianId = guardianId;
    _schoolYearId = schoolYearId;
    _schoolId = schoolId;
    _studentId = studentId;
    _parentName = parentName;
    _member = member;
    _relationId = relationId;
    _birthday = birthday;
    _referrer = referrer;
    _mongoDBId = mongoDBId;
    _payMessage = payMessage;
    _enableTransfer = enableTransfer;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _school = school;
    _needService = needService;
    _schoolYear = schoolYear;
    _student = student;
    _guardian = guardian;
  }

  TuitionEnrollmentItem.fromJson(dynamic json) {
    _id = json['id'];
    _gender = json['gender'];
    _branch = json['branch'];
    _readTime = json['readTime'];
    _form = json['form'];
    _studentName = json['studentName'];
    _number = json['number'];
    _handler = json['handler'];
    _consult = json['consult'];
    _phone = json['phone'];
    _orderId = json['orderId'];
    _clause = json['clause'];
    _way = json['way'];
    _state = json['state'];
    _guardianId = json['guardianId'];
    _schoolYearId = json['schoolYearId'];
    _schoolId = json['schoolId'];
    _studentId = json['studentId'];
    _parentName = json['parentName'];
    _member = json['member'];
    _relationId = json['relationId'];
    _birthday = json['birthday'];
    _referrer = json['referrer'];
    _mongoDBId = json['mongoDBId'];
    _payMessage = json['payMessage'];
    _enableTransfer = json['enableTransfer'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _school =
        json['school'] != null ? SchoolItem.fromJson(json['school']) : null;
    if (json['needService'] != null) {
      _needService = [];
      json['needService'].forEach((v) {
        _needService?.add(ServiceItem.fromJson(v));
      });
    }
    _schoolYear = json['schoolYear'] != null
        ? SchoolYearItem.fromJson(json['schoolYear'])
        : null;
    _student =
        json['student'] != null ? StudentItem.fromJson(json['student']) : null;
    _guardian = json['guardian'];
  }
  num? _id;
  String? _gender;
  String? _branch;
  String? _readTime;
  dynamic _form;
  String? _studentName;
  String? _number;
  dynamic _handler;
  dynamic _consult;
  String? _phone;
  dynamic _orderId;
  dynamic _clause;
  String? _way;
  String? _state;
  dynamic _guardianId;
  num? _schoolYearId;
  num? _schoolId;
  num? _studentId;
  String? _parentName;
  String? _member;
  dynamic _relationId;
  dynamic _birthday;
  dynamic _referrer;
  dynamic _mongoDBId;
  dynamic _payMessage;
  bool? _enableTransfer;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  SchoolItem? _school;
  List<ServiceItem>? _needService;
  SchoolYearItem? _schoolYear;
  StudentItem? _student;
  dynamic _guardian;
  TuitionEnrollmentItem copyWith({
    num? id,
    String? gender,
    String? branch,
    String? readTime,
    dynamic form,
    String? studentName,
    String? number,
    dynamic handler,
    dynamic consult,
    String? phone,
    dynamic orderId,
    dynamic clause,
    String? way,
    String? state,
    dynamic guardianId,
    num? schoolYearId,
    num? schoolId,
    num? studentId,
    String? parentName,
    String? member,
    dynamic relationId,
    dynamic birthday,
    dynamic referrer,
    dynamic mongoDBId,
    dynamic payMessage,
    bool? enableTransfer,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    SchoolItem? school,
    List<ServiceItem>? needService,
    SchoolYearItem? schoolYear,
    StudentItem? student,
    dynamic guardian,
  }) =>
      TuitionEnrollmentItem(
        id: id ?? _id,
        gender: gender ?? _gender,
        branch: branch ?? _branch,
        readTime: readTime ?? _readTime,
        form: form ?? _form,
        studentName: studentName ?? _studentName,
        number: number ?? _number,
        handler: handler ?? _handler,
        consult: consult ?? _consult,
        phone: phone ?? _phone,
        orderId: orderId ?? _orderId,
        clause: clause ?? _clause,
        way: way ?? _way,
        state: state ?? _state,
        guardianId: guardianId ?? _guardianId,
        schoolYearId: schoolYearId ?? _schoolYearId,
        schoolId: schoolId ?? _schoolId,
        studentId: studentId ?? _studentId,
        parentName: parentName ?? _parentName,
        member: member ?? _member,
        relationId: relationId ?? _relationId,
        birthday: birthday ?? _birthday,
        referrer: referrer ?? _referrer,
        mongoDBId: mongoDBId ?? _mongoDBId,
        payMessage: payMessage ?? _payMessage,
        enableTransfer: enableTransfer ?? _enableTransfer,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        school: school ?? _school,
        needService: needService ?? _needService,
        schoolYear: schoolYear ?? _schoolYear,
        student: student ?? _student,
        guardian: guardian ?? _guardian,
      );
  num? get id => _id;
  String? get gender => _gender;
  String? get branch => _branch;
  String? get readTime => _readTime;
  dynamic get form => _form;
  String? get studentName => _studentName;
  String? get number => _number;
  dynamic get handler => _handler;
  dynamic get consult => _consult;
  String? get phone => _phone;
  dynamic get orderId => _orderId;
  dynamic get clause => _clause;
  String? get way => _way;
  String? get state => _state;
  dynamic get guardianId => _guardianId;
  num? get schoolYearId => _schoolYearId;
  num? get schoolId => _schoolId;
  num? get studentId => _studentId;
  String? get parentName => _parentName;
  String? get member => _member;
  dynamic get relationId => _relationId;
  dynamic get birthday => _birthday;
  dynamic get referrer => _referrer;
  dynamic get mongoDBId => _mongoDBId;
  dynamic get payMessage => _payMessage;
  bool? get enableTransfer => _enableTransfer;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  SchoolItem? get school => _school;
  List<ServiceItem>? get needService => _needService;
  SchoolYearItem? get schoolYear => _schoolYear;
  StudentItem? get student => _student;
  dynamic get guardian => _guardian;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['gender'] = _gender;
    map['branch'] = _branch;
    map['readTime'] = _readTime;
    map['form'] = _form;
    map['studentName'] = _studentName;
    map['number'] = _number;
    map['handler'] = _handler;
    map['consult'] = _consult;
    map['phone'] = _phone;
    map['orderId'] = _orderId;
    map['clause'] = _clause;
    map['way'] = _way;
    map['state'] = _state;
    map['guardianId'] = _guardianId;
    map['schoolYearId'] = _schoolYearId;
    map['schoolId'] = _schoolId;
    map['studentId'] = _studentId;
    map['parentName'] = _parentName;
    map['member'] = _member;
    map['relationId'] = _relationId;
    map['birthday'] = _birthday;
    map['referrer'] = _referrer;
    map['mongoDBId'] = _mongoDBId;
    map['payMessage'] = _payMessage;
    map['enableTransfer'] = _enableTransfer;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    if (_school != null) {
      map['school'] = _school?.toJson();
    }
    if (_needService != null) {
      map['needService'] = _needService?.map((v) => v.toJson()).toList();
    }
    if (_schoolYear != null) {
      map['schoolYear'] = _schoolYear?.toJson();
    }
    if (_student != null) {
      map['student'] = _student?.toJson();
    }
    map['guardian'] = _guardian;
    return map;
  }
}
