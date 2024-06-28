import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';
import 'package:macauscholar/model/class_item.dart';
/// id : 1918
/// oldObjectId : "04pDvlmuQn"
/// number : "CO2208270005"
/// studentNO : "S0000037"
/// studentName : "IT学生测试3"
/// branch : "B0000879"
/// studentId : 893
/// classId : 456
/// brandId : 9
/// courseId : 240
/// categoryId : 95
/// orderBy : null
/// phone : "98498"
/// transactions : null
/// amount : 6200
/// realAmount : 6200
/// paid : 6200
/// paidWait : 0
/// paidConfirm : 0
/// remark : null
/// orderAt : "2022-08-27T06:17:10.589Z"
/// state : "init"
/// courseFee : 5000
/// incomeMode : "lesson"
/// orderDate : "2022-03-31T16:00:00.000Z"
/// coupons : null
/// createdAt : "2024-06-24T04:24:37.388Z"
/// updatedAt : "2024-06-24T07:09:20.592Z"
/// class : {"id":456,"oldObjectId":"WmwfElvOLl","issue":null,"sn":"WmwfElvOLl","branch":"B0000879","roomId":57,"categoryId":95,"brandId":9,"title":"張嘉濤高級教育課","fee":5000,"registrationFee":500,"startDate":"2022-03-31T16:00:00.000Z","endDate":"2022-07-29T16:00:00.000Z","capacity":50,"lessons":10,"lessonPrice":500,"pdac":null,"tags":["hot"],"order":0,"scheduleDays":[0,1,2,3,4,5,6],"scheduleTimeStart":null,"scheduleTimeEnd":null,"oldMySQLID":null,"color":"#bb173b","classEndDate":null,"state":"init","ext1":{"enrolled":33,"realEnrolled":28},"ext2":{},"showInAppList":true,"feeRemark":null,"classRemark":"","timeRemark":null,"discountLessonPrice":500,"discount":false,"allBuy":false,"incomeMode":"lesson","cover":null,"courseId":240,"teacherId":84,"assistantId":null,"createdAt":"2024-06-24T03:26:33.747Z","updatedAt":"2024-06-24T03:26:33.747Z","brand":{"id":9,"oldObjectId":"NaNRH7BHsG","title":"朱心算課程","code":"FINANCE_ADACUS","description":null,"order":0,"createdAt":"2024-06-24T03:16:51.034Z","updatedAt":"2024-06-24T08:42:14.297Z"},"course":{"id":240,"oldObjectId":"V92KwIvXAu","title":"IT测试03","code":"C03","description":null,"cover":null,"contents":null,"categoryId":95,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"marketing":null,"createdAt":"2024-06-24T03:23:54.443Z","updatedAt":"2024-06-24T03:23:54.443Z"}}
/// student : {"id":893,"oldObjectId":"Dctc93ZWb0","displayName":"IT学生测试3","number":"S0000037","avatar":null,"gender":"f","phone":"98498","birthday":null,"referrerId":null,"autoTransfer":null,"bindMember":null,"oldMySQLID":null,"createdAt":"2024-06-24T03:17:12.959Z","updatedAt":"2024-06-24T03:17:12.959Z"}
/// category : {"id":95,"oldObjectId":"hJWz5AJEs5","title":"珠心算課程","code":"abacus_class","description":null,"cover":null,"color":null,"parentId":null,"order":0,"oldMySQLID":50,"createdAt":"2024-06-24T03:20:35.725Z","updatedAt":"2024-06-24T03:21:37.465Z"}
/// course : {"id":240,"oldObjectId":"V92KwIvXAu","title":"IT测试03","code":"C03","description":null,"cover":null,"contents":null,"categoryId":95,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"marketing":null,"createdAt":"2024-06-24T03:23:54.443Z","updatedAt":"2024-06-24T03:23:54.443Z"}
/// brand : {"id":9,"oldObjectId":"NaNRH7BHsG","title":"朱心算課程","code":"FINANCE_ADACUS","description":null,"order":0,"createdAt":"2024-06-24T03:16:51.034Z","updatedAt":"2024-06-24T08:42:14.297Z"}

CourseOrderItem courseOrderItemFromJson(String str) => CourseOrderItem.fromJson(json.decode(str));
String courseOrderItemToJson(CourseOrderItem data) => json.encode(data.toJson());
class CourseOrderItem {
  CourseOrderItem({
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
      dynamic orderBy, 
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
      ClassItem? classItem,
      Student? student, 
      Category? category, 
      Course? course, 
      Brand? brand,}){
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
    _class = classItem;
    _student = student;
    _category = category;
    _course = course;
    _brand = brand;
}

  CourseOrderItem.fromJson(dynamic json) {
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
    _class = json['class'] != null ? ClassItem.fromJson(json['class']) : null;
    _student = json['student'] != null ? Student.fromJson(json['student']) : null;
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
    _course = json['course'] != null ? Course.fromJson(json['course']) : null;
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
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
  dynamic _orderBy;
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
  ClassItem? _class;
  Student? _student;
  Category? _category;
  Course? _course;
  Brand? _brand;

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
  dynamic get orderBy => _orderBy;
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
  ClassItem? get classItem => _class;
  Student? get student => _student;
  Category? get category => _category;
  Course? get course => _course;
  Brand? get brand => _brand;

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
    if (_class != null) {
      map['class'] = _class?.toJson();
    }
    if (_student != null) {
      map['student'] = _student?.toJson();
    }
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    if (_course != null) {
      map['course'] = _course?.toJson();
    }
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    return map;
  }

}

/// id : 9
/// oldObjectId : "NaNRH7BHsG"
/// title : "朱心算課程"
/// code : "FINANCE_ADACUS"
/// description : null
/// order : 0
/// createdAt : "2024-06-24T03:16:51.034Z"
/// updatedAt : "2024-06-24T08:42:14.297Z"

Brand brandFromJson(String str) => Brand.fromJson(json.decode(str));
String brandToJson(Brand data) => json.encode(data.toJson());
class Brand {
  Brand({
      num? id, 
      String? oldObjectId, 
      String? title, 
      String? code, 
      dynamic description, 
      num? order, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _oldObjectId = oldObjectId;
    _title = title;
    _code = code;
    _description = description;
    _order = order;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Brand.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _title = json['title'];
    _code = json['code'];
    _description = json['description'];
    _order = json['order'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _title;
  String? _code;
  dynamic _description;
  num? _order;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get title => _title;
  String? get code => _code;
  dynamic get description => _description;
  num? get order => _order;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['title'] = _title;
    map['code'] = _code;
    map['description'] = _description;
    map['order'] = _order;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 240
/// oldObjectId : "V92KwIvXAu"
/// title : "IT测试03"
/// code : "C03"
/// description : null
/// cover : null
/// contents : null
/// categoryId : 95
/// color : null
/// order : 0
/// oldMySQLID : null
/// showInAppList : null
/// tags : null
/// deletedAt : null
/// marketing : null
/// createdAt : "2024-06-24T03:23:54.443Z"
/// updatedAt : "2024-06-24T03:23:54.443Z"

Course courseFromJson(String str) => Course.fromJson(json.decode(str));
String courseToJson(Course data) => json.encode(data.toJson());
class Course {
  Course({
      num? id, 
      String? oldObjectId, 
      String? title, 
      String? code, 
      dynamic description, 
      dynamic cover, 
      dynamic contents, 
      num? categoryId, 
      dynamic color, 
      num? order, 
      dynamic oldMySQLID, 
      dynamic showInAppList, 
      dynamic tags, 
      dynamic deletedAt, 
      dynamic marketing, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _oldObjectId = oldObjectId;
    _title = title;
    _code = code;
    _description = description;
    _cover = cover;
    _contents = contents;
    _categoryId = categoryId;
    _color = color;
    _order = order;
    _oldMySQLID = oldMySQLID;
    _showInAppList = showInAppList;
    _tags = tags;
    _deletedAt = deletedAt;
    _marketing = marketing;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Course.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _title = json['title'];
    _code = json['code'];
    _description = json['description'];
    _cover = json['cover'];
    _contents = json['contents'];
    _categoryId = json['categoryId'];
    _color = json['color'];
    _order = json['order'];
    _oldMySQLID = json['oldMySQLID'];
    _showInAppList = json['showInAppList'];
    _tags = json['tags'];
    _deletedAt = json['deletedAt'];
    _marketing = json['marketing'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _title;
  String? _code;
  dynamic _description;
  dynamic _cover;
  dynamic _contents;
  num? _categoryId;
  dynamic _color;
  num? _order;
  dynamic _oldMySQLID;
  dynamic _showInAppList;
  dynamic _tags;
  dynamic _deletedAt;
  dynamic _marketing;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get title => _title;
  String? get code => _code;
  dynamic get description => _description;
  dynamic get cover => _cover;
  dynamic get contents => _contents;
  num? get categoryId => _categoryId;
  dynamic get color => _color;
  num? get order => _order;
  dynamic get oldMySQLID => _oldMySQLID;
  dynamic get showInAppList => _showInAppList;
  dynamic get tags => _tags;
  dynamic get deletedAt => _deletedAt;
  dynamic get marketing => _marketing;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['title'] = _title;
    map['code'] = _code;
    map['description'] = _description;
    map['cover'] = _cover;
    map['contents'] = _contents;
    map['categoryId'] = _categoryId;
    map['color'] = _color;
    map['order'] = _order;
    map['oldMySQLID'] = _oldMySQLID;
    map['showInAppList'] = _showInAppList;
    map['tags'] = _tags;
    map['deletedAt'] = _deletedAt;
    map['marketing'] = _marketing;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 95
/// oldObjectId : "hJWz5AJEs5"
/// title : "珠心算課程"
/// code : "abacus_class"
/// description : null
/// cover : null
/// color : null
/// parentId : null
/// order : 0
/// oldMySQLID : 50
/// createdAt : "2024-06-24T03:20:35.725Z"
/// updatedAt : "2024-06-24T03:21:37.465Z"

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));
String categoryToJson(Category data) => json.encode(data.toJson());
class Category {
  Category({
      num? id, 
      String? oldObjectId, 
      String? title, 
      String? code, 
      dynamic description, 
      dynamic cover, 
      dynamic color, 
      dynamic parentId, 
      num? order, 
      num? oldMySQLID, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _oldObjectId = oldObjectId;
    _title = title;
    _code = code;
    _description = description;
    _cover = cover;
    _color = color;
    _parentId = parentId;
    _order = order;
    _oldMySQLID = oldMySQLID;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _oldObjectId = json['oldObjectId'];
    _title = json['title'];
    _code = json['code'];
    _description = json['description'];
    _cover = json['cover'];
    _color = json['color'];
    _parentId = json['parentId'];
    _order = json['order'];
    _oldMySQLID = json['oldMySQLID'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _oldObjectId;
  String? _title;
  String? _code;
  dynamic _description;
  dynamic _cover;
  dynamic _color;
  dynamic _parentId;
  num? _order;
  num? _oldMySQLID;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get title => _title;
  String? get code => _code;
  dynamic get description => _description;
  dynamic get cover => _cover;
  dynamic get color => _color;
  dynamic get parentId => _parentId;
  num? get order => _order;
  num? get oldMySQLID => _oldMySQLID;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['oldObjectId'] = _oldObjectId;
    map['title'] = _title;
    map['code'] = _code;
    map['description'] = _description;
    map['cover'] = _cover;
    map['color'] = _color;
    map['parentId'] = _parentId;
    map['order'] = _order;
    map['oldMySQLID'] = _oldMySQLID;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// id : 893
/// oldObjectId : "Dctc93ZWb0"
/// displayName : "IT学生测试3"
/// number : "S0000037"
/// avatar : null
/// gender : "f"
/// phone : "98498"
/// birthday : null
/// referrerId : null
/// autoTransfer : null
/// bindMember : null
/// oldMySQLID : null
/// createdAt : "2024-06-24T03:17:12.959Z"
/// updatedAt : "2024-06-24T03:17:12.959Z"

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



