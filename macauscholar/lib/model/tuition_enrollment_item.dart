import 'dart:convert';
/// id : 182
/// gender : "f"
/// branch : "B1000022"
/// readTime : "2024-06-29T00:00:00.000Z"
/// form : null
/// studentName : "IT測試使用"
/// number : "1"
/// handler : null
/// consult : null
/// phone : "26569852"
/// orderId : null
/// clause : null
/// way : "mobile"
/// state : "init"
/// guardianId : null
/// schoolYearId : 23
/// schoolId : 107
/// studentId : 24
/// parentName : "测试使用家长"
/// member : "be285115-c48a-4bf5-bd6e-17c6b837fcc2"
/// relationId : null
/// birthday : null
/// referrer : "nihso"
/// mongoDBId : null
/// payMessage : null
/// enableTransfer : true
/// createdAt : "2024-06-29T06:31:35.470Z"
/// updatedAt : "2024-06-29T06:31:35.470Z"
/// deletedAt : null

TuitionEnrollmentItem tuitionEnrollmentItemFromJson(String str) => TuitionEnrollmentItem.fromJson(json.decode(str));
String tuitionEnrollmentItemToJson(TuitionEnrollmentItem data) => json.encode(data.toJson());
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
      String? referrer, 
      dynamic mongoDBId, 
      dynamic payMessage, 
      bool? enableTransfer, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt,}){
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
  String? _referrer;
  dynamic _mongoDBId;
  dynamic _payMessage;
  bool? _enableTransfer;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
TuitionEnrollmentItem copyWith({  num? id,
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
  String? referrer,
  dynamic mongoDBId,
  dynamic payMessage,
  bool? enableTransfer,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
}) => TuitionEnrollmentItem(  id: id ?? _id,
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
  String? get referrer => _referrer;
  dynamic get mongoDBId => _mongoDBId;
  dynamic get payMessage => _payMessage;
  bool? get enableTransfer => _enableTransfer;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

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
    return map;
  }

}