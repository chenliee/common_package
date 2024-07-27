import 'dart:convert';
/// id : 12577
/// oldObjectId : "01fHh0TKAQ"
/// orderId : 2153
/// sn : "01fHh0TKAQ"
/// attend : null
/// originalAttend : null
/// classId : 460
/// amount : 169
/// realAmount : 169
/// remark : null
/// createdEmployee : null
/// useState : "init"
/// useDate : null
/// expiredDate : null
/// ext : null
/// createdAt : "2024-06-25T09:21:50.566Z"
/// updatedAt : "2024-07-05T07:50:40.497Z"
/// class : {"id":460,"oldObjectId":"ZhUcLJI1Zx","issue":"2022.11.03","sn":"ZhUcLJI1Zx","branch":"B0000490","roomId":59,"categoryId":95,"brandId":9,"title":"葡語基礎班","fee":2888,"registrationFee":500,"startDate":"2022-05-31T16:00:00.000Z","endDate":"2022-05-31T16:00:00.000Z","capacity":1000,"lessons":10,"lessonPrice":300,"pdac":null,"tags":null,"order":0,"scheduleDays":[0,1,2,4],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":null,"classEndDate":null,"state":"init","ext1":{"enrolled":72,"realEnrolled":69},"ext2":{"trainingFee":400,"trainingFeeModel":"hourly"},"showInAppList":false,"feeRemark":null,"classRemark":"","timeRemark":null,"discountLessonPrice":200,"discount":false,"allBuy":true,"incomeMode":"lesson","cover":null,"courseId":240,"teacherId":77,"assistantId":null,"createdAt":"2024-06-24T03:26:41.377Z","updatedAt":"2024-07-05T06:40:51.875Z"}
/// order : {"id":2153,"oldObjectId":"A9FtIUoXCk","number":"CO2207200001","studentNO":"001","studentName":"IT同学","branch":"B0000490","studentId":1001,"classId":460,"brandId":9,"courseId":240,"categoryId":95,"orderBy":"IT","phone":"1008611","transactions":null,"amount":2888,"realAmount":2887,"paid":2888,"paidWait":0,"paidConfirm":0,"remark":null,"orderAt":"2022-07-20T06:09:08.003Z","state":"init","courseFee":2888,"incomeMode":"lesson","orderDate":"2022-05-31T16:00:00.000Z","coupons":null,"createdAt":"2024-06-24T06:08:14.982Z","updatedAt":"2024-06-24T06:08:14.982Z","student":{"id":1001,"oldObjectId":"u2A0pozF8u","displayName":"IT同学","number":"S0000036","avatar":null,"gender":"f","phone":"1008611","birthday":null,"referrerId":null,"autoTransfer":null,"bindMember":null,"oldMySQLID":null,"createdAt":"2024-06-24T03:19:55.571Z","updatedAt":"2024-06-24T03:19:55.571Z"}}

VoucherItem voucherItemFromJson(String str) => VoucherItem.fromJson(json.decode(str));
String voucherItemToJson(VoucherItem data) => json.encode(data.toJson());
class VoucherItem {
  VoucherItem({
      num? id, 
      String? oldObjectId, 
      num? orderId, 
      String? sn, 
      dynamic attend, 
      dynamic originalAttend, 
      num? classId, 
      num? amount, 
      num? realAmount, 
      dynamic remark, 
      dynamic createdEmployee, 
      String? useState, 
      dynamic useDate, 
      dynamic expiredDate, 
      dynamic ext, 
      String? createdAt, 
      String? updatedAt, 
      Class? classItem,
      Order? order,}){
    _id = id;
    _oldObjectId = oldObjectId;
    _orderId = orderId;
    _sn = sn;
    _attend = attend;
    _originalAttend = originalAttend;
    _classId = classId;
    _amount = amount;
    _realAmount = realAmount;
    _remark = remark;
    _createdEmployee = createdEmployee;
    _useState = useState;
    _useDate = useDate;
    _expiredDate = expiredDate;
    _ext = ext;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _class = classItem;
    _order = order;
}

  VoucherItem.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _orderId = json['orderId'];
    _sn = json['sn'];
    _attend = json['attend'];
    _originalAttend = json['originalAttend'];
    _classId = json['classId'];
    _amount = json['amount'];
    _realAmount = json['realAmount'];
    _remark = json['remark'];
    _createdEmployee = json['createdEmployee'];
    _useState = json['useState'];
    _useDate = json['useDate'];
    _expiredDate = json['expiredDate'];
    _ext = json['ext'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _class = json['class'] != null ? Class.fromJson(json['class']) : null;
    _order = json['order'] != null ? Order.fromJson(json['order']) : null;
  }
  num? _id;
  String? _oldObjectId;
  num? _orderId;
  String? _sn;
  dynamic _attend;
  dynamic _originalAttend;
  num? _classId;
  num? _amount;
  num? _realAmount;
  dynamic _remark;
  dynamic _createdEmployee;
  String? _useState;
  dynamic _useDate;
  dynamic _expiredDate;
  dynamic _ext;
  String? _createdAt;
  String? _updatedAt;
  Class? _class;
  Order? _order;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  num? get orderId => _orderId;
  String? get sn => _sn;
  dynamic get attend => _attend;
  dynamic get originalAttend => _originalAttend;
  num? get classId => _classId;
  num? get amount => _amount;
  num? get realAmount => _realAmount;
  dynamic get remark => _remark;
  dynamic get createdEmployee => _createdEmployee;
  String? get useState => _useState;
  dynamic get useDate => _useDate;
  dynamic get expiredDate => _expiredDate;
  dynamic get ext => _ext;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Class? get classItem => _class;
  Order? get order => _order;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['orderId'] = _orderId;
    map['sn'] = _sn;
    map['attend'] = _attend;
    map['originalAttend'] = _originalAttend;
    map['classId'] = _classId;
    map['amount'] = _amount;
    map['realAmount'] = _realAmount;
    map['remark'] = _remark;
    map['createdEmployee'] = _createdEmployee;
    map['useState'] = _useState;
    map['useDate'] = _useDate;
    map['expiredDate'] = _expiredDate;
    map['ext'] = _ext;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_class != null) {
      map['class'] = _class?.toJson();
    }
    if (_order != null) {
      map['order'] = _order?.toJson();
    }
    return map;
  }

}

/// id : 2153
/// oldObjectId : "A9FtIUoXCk"
/// number : "CO2207200001"
/// studentNO : "001"
/// studentName : "IT同学"
/// branch : "B0000490"
/// studentId : 1001
/// classId : 460
/// brandId : 9
/// courseId : 240
/// categoryId : 95
/// orderBy : "IT"
/// phone : "1008611"
/// transactions : null
/// amount : 2888
/// realAmount : 2887
/// paid : 2888
/// paidWait : 0
/// paidConfirm : 0
/// remark : null
/// orderAt : "2022-07-20T06:09:08.003Z"
/// state : "init"
/// courseFee : 2888
/// incomeMode : "lesson"
/// orderDate : "2022-05-31T16:00:00.000Z"
/// coupons : null
/// createdAt : "2024-06-24T06:08:14.982Z"
/// updatedAt : "2024-06-24T06:08:14.982Z"
/// student : {"id":1001,"oldObjectId":"u2A0pozF8u","displayName":"IT同学","number":"S0000036","avatar":null,"gender":"f","phone":"1008611","birthday":null,"referrerId":null,"autoTransfer":null,"bindMember":null,"oldMySQLID":null,"createdAt":"2024-06-24T03:19:55.571Z","updatedAt":"2024-06-24T03:19:55.571Z"}

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
      Student? student,}){
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
    _student = student;
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
    _student = json['student'] != null ? Student.fromJson(json['student']) : null;
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
  Student? _student;

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
  Student? get student => _student;

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
    if (_student != null) {
      map['student'] = _student?.toJson();
    }
    return map;
  }

}

/// id : 1001
/// oldObjectId : "u2A0pozF8u"
/// displayName : "IT同学"
/// number : "S0000036"
/// avatar : null
/// gender : "f"
/// phone : "1008611"
/// birthday : null
/// referrerId : null
/// autoTransfer : null
/// bindMember : null
/// oldMySQLID : null
/// createdAt : "2024-06-24T03:19:55.571Z"
/// updatedAt : "2024-06-24T03:19:55.571Z"

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
      dynamic autoTransfer, 
      dynamic bindMember, 
      dynamic oldMySQLID, 
      String? createdAt, 
      String? updatedAt,}){
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
  dynamic _autoTransfer;
  dynamic _bindMember;
  dynamic _oldMySQLID;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get displayName => _displayName;
  String? get number => _number;
  dynamic get avatar => _avatar;
  String? get gender => _gender;
  String? get phone => _phone;
  dynamic get birthday => _birthday;
  dynamic get referrerId => _referrerId;
  dynamic get autoTransfer => _autoTransfer;
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

/// id : 460
/// oldObjectId : "ZhUcLJI1Zx"
/// issue : "2022.11.03"
/// sn : "ZhUcLJI1Zx"
/// branch : "B0000490"
/// roomId : 59
/// categoryId : 95
/// brandId : 9
/// title : "葡語基礎班"
/// fee : 2888
/// registrationFee : 500
/// startDate : "2022-05-31T16:00:00.000Z"
/// endDate : "2022-05-31T16:00:00.000Z"
/// capacity : 1000
/// lessons : 10
/// lessonPrice : 300
/// pdac : null
/// tags : null
/// order : 0
/// scheduleDays : [0,1,2,4]
/// scheduleTimeStart : null
/// scheduleTimeEnd : null
/// oldMySQLID : null
/// color : null
/// classEndDate : null
/// state : "init"
/// ext1 : {"enrolled":72,"realEnrolled":69}
/// ext2 : {"trainingFee":400,"trainingFeeModel":"hourly"}
/// showInAppList : false
/// feeRemark : null
/// classRemark : ""
/// timeRemark : null
/// discountLessonPrice : 200
/// discount : false
/// allBuy : true
/// incomeMode : "lesson"
/// cover : null
/// courseId : 240
/// teacherId : 77
/// assistantId : null
/// createdAt : "2024-06-24T03:26:41.377Z"
/// updatedAt : "2024-07-05T06:40:51.875Z"

Class classFromJson(String str) => Class.fromJson(json.decode(str));
String classToJson(Class data) => json.encode(data.toJson());
class Class {
  Class({
      num? id, 
      String? oldObjectId, 
      String? issue, 
      String? sn, 
      String? branch, 
      num? roomId, 
      num? categoryId, 
      num? brandId, 
      String? title, 
      num? fee, 
      num? registrationFee, 
      String? startDate, 
      String? endDate, 
      num? capacity, 
      num? lessons, 
      num? lessonPrice, 
      dynamic pdac, 
      dynamic tags, 
      num? order, 
      List<num>? scheduleDays, 
      dynamic scheduleTimeStart, 
      dynamic scheduleTimeEnd, 
      dynamic oldMySQLID, 
      dynamic color, 
      dynamic classEndDate, 
      String? state, 
      Ext1? ext1, 
      Ext2? ext2, 
      bool? showInAppList, 
      dynamic feeRemark, 
      String? classRemark, 
      dynamic timeRemark, 
      num? discountLessonPrice, 
      bool? discount, 
      bool? allBuy, 
      String? incomeMode, 
      dynamic cover, 
      num? courseId, 
      num? teacherId, 
      dynamic assistantId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _oldObjectId = oldObjectId;
    _issue = issue;
    _sn = sn;
    _branch = branch;
    _roomId = roomId;
    _categoryId = categoryId;
    _brandId = brandId;
    _title = title;
    _fee = fee;
    _registrationFee = registrationFee;
    _startDate = startDate;
    _endDate = endDate;
    _capacity = capacity;
    _lessons = lessons;
    _lessonPrice = lessonPrice;
    _pdac = pdac;
    _tags = tags;
    _order = order;
    _scheduleDays = scheduleDays;
    _scheduleTimeStart = scheduleTimeStart;
    _scheduleTimeEnd = scheduleTimeEnd;
    _oldMySQLID = oldMySQLID;
    _color = color;
    _classEndDate = classEndDate;
    _state = state;
    _ext1 = ext1;
    _ext2 = ext2;
    _showInAppList = showInAppList;
    _feeRemark = feeRemark;
    _classRemark = classRemark;
    _timeRemark = timeRemark;
    _discountLessonPrice = discountLessonPrice;
    _discount = discount;
    _allBuy = allBuy;
    _incomeMode = incomeMode;
    _cover = cover;
    _courseId = courseId;
    _teacherId = teacherId;
    _assistantId = assistantId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Class.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _issue = json['issue'];
    _sn = json['sn'];
    _branch = json['branch'];
    _roomId = json['roomId'];
    _categoryId = json['categoryId'];
    _brandId = json['brandId'];
    _title = json['title'];
    _fee = json['fee'];
    _registrationFee = json['registrationFee'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _capacity = json['capacity'];
    _lessons = json['lessons'];
    _lessonPrice = json['lessonPrice'];
    _pdac = json['pdac'];
    _tags = json['tags'];
    _order = json['order'];
    _scheduleDays = json['scheduleDays'] != null ? json['scheduleDays'].cast<num>() : [];
    _scheduleTimeStart = json['scheduleTimeStart'];
    _scheduleTimeEnd = json['scheduleTimeEnd'];
    _oldMySQLID = json['oldMySQLID'];
    _color = json['color'];
    _classEndDate = json['classEndDate'];
    _state = json['state'];
    _ext1 = json['ext1'] != null ? Ext1.fromJson(json['ext1']) : null;
    _ext2 = json['ext2'] != null ? Ext2.fromJson(json['ext2']) : null;
    _showInAppList = json['showInAppList'];
    _feeRemark = json['feeRemark'];
    _classRemark = json['classRemark'];
    _timeRemark = json['timeRemark'];
    _discountLessonPrice = json['discountLessonPrice'];
    _discount = json['discount'];
    _allBuy = json['allBuy'];
    _incomeMode = json['incomeMode'];
    _cover = json['cover'];
    _courseId = json['courseId'];
    _teacherId = json['teacherId'];
    _assistantId = json['assistantId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _issue;
  String? _sn;
  String? _branch;
  num? _roomId;
  num? _categoryId;
  num? _brandId;
  String? _title;
  num? _fee;
  num? _registrationFee;
  String? _startDate;
  String? _endDate;
  num? _capacity;
  num? _lessons;
  num? _lessonPrice;
  dynamic _pdac;
  dynamic _tags;
  num? _order;
  List<num>? _scheduleDays;
  dynamic _scheduleTimeStart;
  dynamic _scheduleTimeEnd;
  dynamic _oldMySQLID;
  dynamic _color;
  dynamic _classEndDate;
  String? _state;
  Ext1? _ext1;
  Ext2? _ext2;
  bool? _showInAppList;
  dynamic _feeRemark;
  String? _classRemark;
  dynamic _timeRemark;
  num? _discountLessonPrice;
  bool? _discount;
  bool? _allBuy;
  String? _incomeMode;
  dynamic _cover;
  num? _courseId;
  num? _teacherId;
  dynamic _assistantId;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get issue => _issue;
  String? get sn => _sn;
  String? get branch => _branch;
  num? get roomId => _roomId;
  num? get categoryId => _categoryId;
  num? get brandId => _brandId;
  String? get title => _title;
  num? get fee => _fee;
  num? get registrationFee => _registrationFee;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  num? get capacity => _capacity;
  num? get lessons => _lessons;
  num? get lessonPrice => _lessonPrice;
  dynamic get pdac => _pdac;
  dynamic get tags => _tags;
  num? get order => _order;
  List<num>? get scheduleDays => _scheduleDays;
  dynamic get scheduleTimeStart => _scheduleTimeStart;
  dynamic get scheduleTimeEnd => _scheduleTimeEnd;
  dynamic get oldMySQLID => _oldMySQLID;
  dynamic get color => _color;
  dynamic get classEndDate => _classEndDate;
  String? get state => _state;
  Ext1? get ext1 => _ext1;
  Ext2? get ext2 => _ext2;
  bool? get showInAppList => _showInAppList;
  dynamic get feeRemark => _feeRemark;
  String? get classRemark => _classRemark;
  dynamic get timeRemark => _timeRemark;
  num? get discountLessonPrice => _discountLessonPrice;
  bool? get discount => _discount;
  bool? get allBuy => _allBuy;
  String? get incomeMode => _incomeMode;
  dynamic get cover => _cover;
  num? get courseId => _courseId;
  num? get teacherId => _teacherId;
  dynamic get assistantId => _assistantId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['issue'] = _issue;
    map['sn'] = _sn;
    map['branch'] = _branch;
    map['roomId'] = _roomId;
    map['categoryId'] = _categoryId;
    map['brandId'] = _brandId;
    map['title'] = _title;
    map['fee'] = _fee;
    map['registrationFee'] = _registrationFee;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    map['capacity'] = _capacity;
    map['lessons'] = _lessons;
    map['lessonPrice'] = _lessonPrice;
    map['pdac'] = _pdac;
    map['tags'] = _tags;
    map['order'] = _order;
    map['scheduleDays'] = _scheduleDays;
    map['scheduleTimeStart'] = _scheduleTimeStart;
    map['scheduleTimeEnd'] = _scheduleTimeEnd;
    map['oldMySQLID'] = _oldMySQLID;
    map['color'] = _color;
    map['classEndDate'] = _classEndDate;
    map['state'] = _state;
    if (_ext1 != null) {
      map['ext1'] = _ext1?.toJson();
    }
    if (_ext2 != null) {
      map['ext2'] = _ext2?.toJson();
    }
    map['showInAppList'] = _showInAppList;
    map['feeRemark'] = _feeRemark;
    map['classRemark'] = _classRemark;
    map['timeRemark'] = _timeRemark;
    map['discountLessonPrice'] = _discountLessonPrice;
    map['discount'] = _discount;
    map['allBuy'] = _allBuy;
    map['incomeMode'] = _incomeMode;
    map['cover'] = _cover;
    map['courseId'] = _courseId;
    map['teacherId'] = _teacherId;
    map['assistantId'] = _assistantId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// trainingFee : 400
/// trainingFeeModel : "hourly"

Ext2 ext2FromJson(String str) => Ext2.fromJson(json.decode(str));
String ext2ToJson(Ext2 data) => json.encode(data.toJson());
class Ext2 {
  Ext2({
      num? trainingFee, 
      String? trainingFeeModel,}){
    _trainingFee = trainingFee;
    _trainingFeeModel = trainingFeeModel;
}

  Ext2.fromJson(dynamic json) {
    _trainingFee = json['trainingFee'];
    _trainingFeeModel = json['trainingFeeModel'];
  }
  num? _trainingFee;
  String? _trainingFeeModel;

  num? get trainingFee => _trainingFee;
  String? get trainingFeeModel => _trainingFeeModel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['trainingFee'] = _trainingFee;
    map['trainingFeeModel'] = _trainingFeeModel;
    return map;
  }

}

/// enrolled : 72
/// realEnrolled : 69

Ext1 ext1FromJson(String str) => Ext1.fromJson(json.decode(str));
String ext1ToJson(Ext1 data) => json.encode(data.toJson());
class Ext1 {
  Ext1({
      num? enrolled, 
      num? realEnrolled,}){
    _enrolled = enrolled;
    _realEnrolled = realEnrolled;
}

  Ext1.fromJson(dynamic json) {
    _enrolled = json['enrolled'];
    _realEnrolled = json['realEnrolled'];
  }
  num? _enrolled;
  num? _realEnrolled;

  num? get enrolled => _enrolled;
  num? get realEnrolled => _realEnrolled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enrolled'] = _enrolled;
    map['realEnrolled'] = _realEnrolled;
    return map;
  }

}