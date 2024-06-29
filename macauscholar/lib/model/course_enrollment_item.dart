import 'dart:convert';

/// id : 587
/// oldObjectId : "PMzzySANWT"
/// studentName : "張芯淇"
/// phone : "62044433"
/// gender : "f"
/// pdac : false
/// sn : "PMzzySANWT"
/// way : "admin"
/// classId : 1
/// studentId : 513
/// orderId : 948
/// handler : "YL1326"
/// state : "confirmed"
/// remark : null
/// joinAt : "2023-09-26T08:05:42.620Z"
/// lessons : null
/// lessonAmount : null
/// lessonRealAmount : null
/// birthday : null
/// payMessage : null
/// transactionSN : null
/// referrer : null
/// uid : null
/// enableTransfer : false
/// createdAt : "2024-04-02T06:46:36.573Z"
/// updatedAt : "2024-04-02T06:46:36.573Z"
/// order : {"id":948,"oldObjectId":"oNcjiLox7n","number":"CO2310140002","studentNO":"YLC02301016","studentName":"張芯淇","branch":"B1000957","studentId":513,"classId":1,"brandId":3,"courseId":32,"categoryId":6,"orderBy":"YL1326","phone":"62044433","transactions":null,"amount":2223,"realAmount":1667,"paid":1667,"paidWait":0,"paidConfirm":0,"remark":null,"orderAt":"2023-10-14T01:22:48.034Z","state":"init","courseFee":1667,"incomeMode":"wholeClass","orderDate":"2023-09-30T16:00:00.000Z","coupons":null,"createdAt":"2024-03-28T09:05:26.569Z","updatedAt":"2024-03-28T09:05:26.569Z"}
/// student : {"id":513,"oldObjectId":"cRBm9yt12n","displayName":"張芯淇","number":"YLC02301016","avatar":null,"gender":"f","phone":"62044433","birthday":null,"referrerId":null,"autoTransfer":"0","bindMember":null,"oldMySQLID":null,"createdAt":"2024-03-27T06:26:51.969Z","updatedAt":"2024-03-27T06:49:31.774Z"}

CourseEnrollmentItem enrollmentItemFromJson(String str) =>
    CourseEnrollmentItem.fromJson(json.decode(str));
String enrollmentItemToJson(CourseEnrollmentItem data) =>
    json.encode(data.toJson());

class CourseEnrollmentItem {
  CourseEnrollmentItem({
    num? id,
    String? oldObjectId,
    String? studentName,
    String? phone,
    String? gender,
    bool? pdac,
    String? sn,
    String? way,
    num? classId,
    num? studentId,
    num? orderId,
    String? handler,
    String? state,
    dynamic remark,
    String? joinAt,
    dynamic lessons,
    dynamic lessonAmount,
    dynamic lessonRealAmount,
    dynamic birthday,
    dynamic payMessage,
    dynamic transactionSN,
    dynamic referrer,
    dynamic uid,
    bool? enableTransfer,
    String? createdAt,
    String? updatedAt,
    Order? order,
    Student? student,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _studentName = studentName;
    _phone = phone;
    _gender = gender;
    _pdac = pdac;
    _sn = sn;
    _way = way;
    _classId = classId;
    _studentId = studentId;
    _orderId = orderId;
    _handler = handler;
    _state = state;
    _remark = remark;
    _joinAt = joinAt;
    _lessons = lessons;
    _lessonAmount = lessonAmount;
    _lessonRealAmount = lessonRealAmount;
    _birthday = birthday;
    _payMessage = payMessage;
    _transactionSN = transactionSN;
    _referrer = referrer;
    _uid = uid;
    _enableTransfer = enableTransfer;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _order = order;
    _student = student;
  }

  CourseEnrollmentItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _studentName = json['studentName'];
    _phone = json['phone'];
    _gender = json['gender'];
    _pdac = json['pdac'];
    _sn = json['sn'];
    _way = json['way'];
    _classId = json['classId'];
    _studentId = json['studentId'];
    _orderId = json['orderId'];
    _handler = json['handler'];
    _state = json['state'];
    _remark = json['remark'];
    _joinAt = json['joinAt'];
    _lessons = json['lessons'];
    _lessonAmount = json['lessonAmount'];
    _lessonRealAmount = json['lessonRealAmount'];
    _birthday = json['birthday'];
    _payMessage = json['payMessage'];
    _transactionSN = json['transactionSN'];
    _referrer = json['referrer'];
    _uid = json['uid'];
    _enableTransfer = json['enableTransfer'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _order = json['order'] != null ? Order.fromJson(json['order']) : null;
    _student =
        json['student'] != null ? Student.fromJson(json['student']) : null;
  }
  num? _id;
  String? _oldObjectId;
  String? _studentName;
  String? _phone;
  String? _gender;
  bool? _pdac;
  String? _sn;
  String? _way;
  num? _classId;
  num? _studentId;
  num? _orderId;
  String? _handler;
  String? _state;
  dynamic _remark;
  String? _joinAt;
  dynamic _lessons;
  dynamic _lessonAmount;
  dynamic _lessonRealAmount;
  dynamic _birthday;
  dynamic _payMessage;
  dynamic _transactionSN;
  dynamic _referrer;
  dynamic _uid;
  bool? _enableTransfer;
  String? _createdAt;
  String? _updatedAt;
  Order? _order;
  Student? _student;
  CourseEnrollmentItem copyWith({
    num? id,
    String? oldObjectId,
    String? studentName,
    String? phone,
    String? gender,
    bool? pdac,
    String? sn,
    String? way,
    num? classId,
    num? studentId,
    num? orderId,
    String? handler,
    String? state,
    dynamic remark,
    String? joinAt,
    dynamic lessons,
    dynamic lessonAmount,
    dynamic lessonRealAmount,
    dynamic birthday,
    dynamic payMessage,
    dynamic transactionSN,
    dynamic referrer,
    dynamic uid,
    bool? enableTransfer,
    String? createdAt,
    String? updatedAt,
    Order? order,
    Student? student,
  }) =>
      CourseEnrollmentItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        studentName: studentName ?? _studentName,
        phone: phone ?? _phone,
        gender: gender ?? _gender,
        pdac: pdac ?? _pdac,
        sn: sn ?? _sn,
        way: way ?? _way,
        classId: classId ?? _classId,
        studentId: studentId ?? _studentId,
        orderId: orderId ?? _orderId,
        handler: handler ?? _handler,
        state: state ?? _state,
        remark: remark ?? _remark,
        joinAt: joinAt ?? _joinAt,
        lessons: lessons ?? _lessons,
        lessonAmount: lessonAmount ?? _lessonAmount,
        lessonRealAmount: lessonRealAmount ?? _lessonRealAmount,
        birthday: birthday ?? _birthday,
        payMessage: payMessage ?? _payMessage,
        transactionSN: transactionSN ?? _transactionSN,
        referrer: referrer ?? _referrer,
        uid: uid ?? _uid,
        enableTransfer: enableTransfer ?? _enableTransfer,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        order: order ?? _order,
        student: student ?? _student,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get studentName => _studentName;
  String? get phone => _phone;
  String? get gender => _gender;
  bool? get pdac => _pdac;
  String? get sn => _sn;
  String? get way => _way;
  num? get classId => _classId;
  num? get studentId => _studentId;
  num? get orderId => _orderId;
  String? get handler => _handler;
  String? get state => _state;
  dynamic get remark => _remark;
  String? get joinAt => _joinAt;
  dynamic get lessons => _lessons;
  dynamic get lessonAmount => _lessonAmount;
  dynamic get lessonRealAmount => _lessonRealAmount;
  dynamic get birthday => _birthday;
  dynamic get payMessage => _payMessage;
  dynamic get transactionSN => _transactionSN;
  dynamic get referrer => _referrer;
  dynamic get uid => _uid;
  bool? get enableTransfer => _enableTransfer;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Order? get order => _order;
  Student? get student => _student;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['studentName'] = _studentName;
    map['phone'] = _phone;
    map['gender'] = _gender;
    map['pdac'] = _pdac;
    map['sn'] = _sn;
    map['way'] = _way;
    map['classId'] = _classId;
    map['studentId'] = _studentId;
    map['orderId'] = _orderId;
    map['handler'] = _handler;
    map['state'] = _state;
    map['remark'] = _remark;
    map['joinAt'] = _joinAt;
    map['lessons'] = _lessons;
    map['lessonAmount'] = _lessonAmount;
    map['lessonRealAmount'] = _lessonRealAmount;
    map['birthday'] = _birthday;
    map['payMessage'] = _payMessage;
    map['transactionSN'] = _transactionSN;
    map['referrer'] = _referrer;
    map['uid'] = _uid;
    map['enableTransfer'] = _enableTransfer;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_order != null) {
      map['order'] = _order?.toJson();
    }
    if (_student != null) {
      map['student'] = _student?.toJson();
    }
    return map;
  }
}

/// id : 513
/// oldObjectId : "cRBm9yt12n"
/// displayName : "張芯淇"
/// number : "YLC02301016"
/// avatar : null
/// gender : "f"
/// phone : "62044433"
/// birthday : null
/// referrerId : null
/// autoTransfer : "0"
/// bindMember : null
/// oldMySQLID : null
/// createdAt : "2024-03-27T06:26:51.969Z"
/// updatedAt : "2024-03-27T06:49:31.774Z"

Student studentFromJson(String str) => Student.fromJson(json.decode(str));
String studentToJson(Student data) => json.encode(data.toJson());

class Student {
  Student({
    num? id,
    String? oldObjectId,
    String? displayName,
    String? number,
    dynamic avatar,
    String? gender,
    String? phone,
    dynamic birthday,
    dynamic referrerId,
    String? autoTransfer,
    dynamic bindMember,
    dynamic oldMySQLID,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _displayName = displayName;
    _number = number;
    _avatar = avatar;
    _gender = gender;
    _phone = phone;
    _birthday = birthday;
    _referrerId = referrerId;
    _autoTransfer = autoTransfer;
    _bindMember = bindMember;
    _oldMySQLID = oldMySQLID;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Student.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _displayName = json['displayName'];
    _number = json['number'];
    _avatar = json['avatar'];
    _gender = json['gender'];
    _phone = json['phone'];
    _birthday = json['birthday'];
    _referrerId = json['referrerId'];
    _autoTransfer = json['autoTransfer'];
    _bindMember = json['bindMember'];
    _oldMySQLID = json['oldMySQLID'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _displayName;
  String? _number;
  dynamic _avatar;
  String? _gender;
  String? _phone;
  dynamic _birthday;
  dynamic _referrerId;
  String? _autoTransfer;
  dynamic _bindMember;
  dynamic _oldMySQLID;
  String? _createdAt;
  String? _updatedAt;
  Student copyWith({
    num? id,
    String? oldObjectId,
    String? displayName,
    String? number,
    dynamic avatar,
    String? gender,
    String? phone,
    dynamic birthday,
    dynamic referrerId,
    String? autoTransfer,
    dynamic bindMember,
    dynamic oldMySQLID,
    String? createdAt,
    String? updatedAt,
  }) =>
      Student(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        displayName: displayName ?? _displayName,
        number: number ?? _number,
        avatar: avatar ?? _avatar,
        gender: gender ?? _gender,
        phone: phone ?? _phone,
        birthday: birthday ?? _birthday,
        referrerId: referrerId ?? _referrerId,
        autoTransfer: autoTransfer ?? _autoTransfer,
        bindMember: bindMember ?? _bindMember,
        oldMySQLID: oldMySQLID ?? _oldMySQLID,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get displayName => _displayName;
  String? get number => _number;
  dynamic get avatar => _avatar;
  String? get gender => _gender;
  String? get phone => _phone;
  dynamic get birthday => _birthday;
  dynamic get referrerId => _referrerId;
  String? get autoTransfer => _autoTransfer;
  dynamic get bindMember => _bindMember;
  dynamic get oldMySQLID => _oldMySQLID;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['displayName'] = _displayName;
    map['number'] = _number;
    map['avatar'] = _avatar;
    map['gender'] = _gender;
    map['phone'] = _phone;
    map['birthday'] = _birthday;
    map['referrerId'] = _referrerId;
    map['autoTransfer'] = _autoTransfer;
    map['bindMember'] = _bindMember;
    map['oldMySQLID'] = _oldMySQLID;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// id : 948
/// oldObjectId : "oNcjiLox7n"
/// number : "CO2310140002"
/// studentNO : "YLC02301016"
/// studentName : "張芯淇"
/// branch : "B1000957"
/// studentId : 513
/// classId : 1
/// brandId : 3
/// courseId : 32
/// categoryId : 6
/// orderBy : "YL1326"
/// phone : "62044433"
/// transactions : null
/// amount : 2223
/// realAmount : 1667
/// paid : 1667
/// paidWait : 0
/// paidConfirm : 0
/// remark : null
/// orderAt : "2023-10-14T01:22:48.034Z"
/// state : "init"
/// courseFee : 1667
/// incomeMode : "wholeClass"
/// orderDate : "2023-09-30T16:00:00.000Z"
/// coupons : null
/// createdAt : "2024-03-28T09:05:26.569Z"
/// updatedAt : "2024-03-28T09:05:26.569Z"

Order orderFromJson(String str) => Order.fromJson(json.decode(str));
String orderToJson(Order data) => json.encode(data.toJson());

class Order {
  Order({
    num? id,
    String? oldObjectId,
    String? number,
    String? studentNO,
    String? studentName,
    String? branch,
    num? studentId,
    num? classId,
    num? brandId,
    num? courseId,
    num? categoryId,
    String? orderBy,
    String? phone,
    dynamic transactions,
    num? amount,
    num? realAmount,
    num? paid,
    num? paidWait,
    num? paidConfirm,
    dynamic remark,
    String? orderAt,
    String? state,
    num? courseFee,
    String? incomeMode,
    String? orderDate,
    dynamic coupons,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _number = number;
    _studentNO = studentNO;
    _studentName = studentName;
    _branch = branch;
    _studentId = studentId;
    _classId = classId;
    _brandId = brandId;
    _courseId = courseId;
    _categoryId = categoryId;
    _orderBy = orderBy;
    _phone = phone;
    _transactions = transactions;
    _amount = amount;
    _realAmount = realAmount;
    _paid = paid;
    _paidWait = paidWait;
    _paidConfirm = paidConfirm;
    _remark = remark;
    _orderAt = orderAt;
    _state = state;
    _courseFee = courseFee;
    _incomeMode = incomeMode;
    _orderDate = orderDate;
    _coupons = coupons;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Order.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _number = json['number'];
    _studentNO = json['studentNO'];
    _studentName = json['studentName'];
    _branch = json['branch'];
    _studentId = json['studentId'];
    _classId = json['classId'];
    _brandId = json['brandId'];
    _courseId = json['courseId'];
    _categoryId = json['categoryId'];
    _orderBy = json['orderBy'];
    _phone = json['phone'];
    _transactions = json['transactions'];
    _amount = json['amount'];
    _realAmount = json['realAmount'];
    _paid = json['paid'];
    _paidWait = json['paidWait'];
    _paidConfirm = json['paidConfirm'];
    _remark = json['remark'];
    _orderAt = json['orderAt'];
    _state = json['state'];
    _courseFee = json['courseFee'];
    _incomeMode = json['incomeMode'];
    _orderDate = json['orderDate'];
    _coupons = json['coupons'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _number;
  String? _studentNO;
  String? _studentName;
  String? _branch;
  num? _studentId;
  num? _classId;
  num? _brandId;
  num? _courseId;
  num? _categoryId;
  String? _orderBy;
  String? _phone;
  dynamic _transactions;
  num? _amount;
  num? _realAmount;
  num? _paid;
  num? _paidWait;
  num? _paidConfirm;
  dynamic _remark;
  String? _orderAt;
  String? _state;
  num? _courseFee;
  String? _incomeMode;
  String? _orderDate;
  dynamic _coupons;
  String? _createdAt;
  String? _updatedAt;
  Order copyWith({
    num? id,
    String? oldObjectId,
    String? number,
    String? studentNO,
    String? studentName,
    String? branch,
    num? studentId,
    num? classId,
    num? brandId,
    num? courseId,
    num? categoryId,
    String? orderBy,
    String? phone,
    dynamic transactions,
    num? amount,
    num? realAmount,
    num? paid,
    num? paidWait,
    num? paidConfirm,
    dynamic remark,
    String? orderAt,
    String? state,
    num? courseFee,
    String? incomeMode,
    String? orderDate,
    dynamic coupons,
    String? createdAt,
    String? updatedAt,
  }) =>
      Order(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        number: number ?? _number,
        studentNO: studentNO ?? _studentNO,
        studentName: studentName ?? _studentName,
        branch: branch ?? _branch,
        studentId: studentId ?? _studentId,
        classId: classId ?? _classId,
        brandId: brandId ?? _brandId,
        courseId: courseId ?? _courseId,
        categoryId: categoryId ?? _categoryId,
        orderBy: orderBy ?? _orderBy,
        phone: phone ?? _phone,
        transactions: transactions ?? _transactions,
        amount: amount ?? _amount,
        realAmount: realAmount ?? _realAmount,
        paid: paid ?? _paid,
        paidWait: paidWait ?? _paidWait,
        paidConfirm: paidConfirm ?? _paidConfirm,
        remark: remark ?? _remark,
        orderAt: orderAt ?? _orderAt,
        state: state ?? _state,
        courseFee: courseFee ?? _courseFee,
        incomeMode: incomeMode ?? _incomeMode,
        orderDate: orderDate ?? _orderDate,
        coupons: coupons ?? _coupons,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get number => _number;
  String? get studentNO => _studentNO;
  String? get studentName => _studentName;
  String? get branch => _branch;
  num? get studentId => _studentId;
  num? get classId => _classId;
  num? get brandId => _brandId;
  num? get courseId => _courseId;
  num? get categoryId => _categoryId;
  String? get orderBy => _orderBy;
  String? get phone => _phone;
  dynamic get transactions => _transactions;
  num? get amount => _amount;
  num? get realAmount => _realAmount;
  num? get paid => _paid;
  num? get paidWait => _paidWait;
  num? get paidConfirm => _paidConfirm;
  dynamic get remark => _remark;
  String? get orderAt => _orderAt;
  String? get state => _state;
  num? get courseFee => _courseFee;
  String? get incomeMode => _incomeMode;
  String? get orderDate => _orderDate;
  dynamic get coupons => _coupons;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['number'] = _number;
    map['studentNO'] = _studentNO;
    map['studentName'] = _studentName;
    map['branch'] = _branch;
    map['studentId'] = _studentId;
    map['classId'] = _classId;
    map['brandId'] = _brandId;
    map['courseId'] = _courseId;
    map['categoryId'] = _categoryId;
    map['orderBy'] = _orderBy;
    map['phone'] = _phone;
    map['transactions'] = _transactions;
    map['amount'] = _amount;
    map['realAmount'] = _realAmount;
    map['paid'] = _paid;
    map['paidWait'] = _paidWait;
    map['paidConfirm'] = _paidConfirm;
    map['remark'] = _remark;
    map['orderAt'] = _orderAt;
    map['state'] = _state;
    map['courseFee'] = _courseFee;
    map['incomeMode'] = _incomeMode;
    map['orderDate'] = _orderDate;
    map['coupons'] = _coupons;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}
