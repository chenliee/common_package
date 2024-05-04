import 'dart:convert';

import 'package:macauscholar1/model/teacher_item.dart';

import 'course_item.dart';

/// id : 1
/// oldObjectId : "0BFEJYnaVv"
/// issue : null
/// sn : "0BFEJYnaVv"
/// branch : "B1000957"
/// roomId : 22
/// categoryId : 6
/// brandId : 3
/// title : "YL0601_01"
/// fee : 2223
/// registrationFee : 500
/// startDate : "2023-09-30T16:00:00.000Z"
/// endDate : "2023-12-30T16:00:00.000Z"
/// capacity : 4
/// lessons : 12
/// lessonPrice : 195
/// pdac : null
/// tags : ["s"]
/// order : 0
/// scheduleDays : [6]
/// scheduleTimeStart : null
/// scheduleTimeEnd : null
/// oldMySQLID : null
/// color : null
/// classEndDate : null
/// state : "init"
/// ext1 : {"enrolled":4,"realEnrolled":4}
/// ext2 : {}
/// showInAppList : false
/// feeRemark : null
/// classRemark : ""
/// timeRemark : null
/// discountLessonPrice : 195
/// discount : false
/// allBuy : false
/// incomeMode : "lesson"
/// courseId : 32
/// teacherId : 54
/// assistantId : null
/// createdAt : "2024-03-27T06:27:44.222Z"
/// updatedAt : "2024-03-27T07:03:24.757Z"
/// brand : {"id":3,"oldObjectId":"Myh0wuBxBN","title":"珠心算專業教育（澳門）有限公司","code":"FINANCE_ADACUS_COMPANY","description":null,"order":null,"createdAt":"2024-03-27T06:26:07.816Z","updatedAt":"2024-03-27T06:32:56.377Z"}
/// course : {"id":32,"oldObjectId":"VaXKbVfc3D","title":"珠心算常規班","code":"0013","description":null,"cover":null,"contents":null,"categoryId":6,"color":null,"order":0,"oldMySQLID":null,"showInAppList":null,"tags":null,"deletedAt":null,"createdAt":"2024-03-27T06:27:22.975Z","updatedAt":"2024-03-27T07:02:18.064Z","category":{"id":6,"oldObjectId":"3XuY3IEJJ3","title":"珠心算課程","code":"ABACUS_COURSE","description":null,"cover":null,"parentId":5,"order":0,"oldMySQLID":50,"createdAt":"2024-03-27T06:27:15.148Z","updatedAt":"2024-03-27T06:59:15.572Z"}}
/// teacher : {"id":54,"oldObjectId":"x51Jpz3arY","number":"020","displayName":"梅越明","avatar":null,"gender":"f","phone":"65990860","description":"","recommend":false,"createdAt":"2024-03-27T06:26:14.200Z","updatedAt":"2024-03-27T06:34:01.007Z"}
/// assistant : null

ClassItem classItemFromJson(String str) => ClassItem.fromJson(json.decode(str));
String classItemToJson(ClassItem data) => json.encode(data.toJson());

class ClassItem {
  ClassItem({
    num? id,
    String? oldObjectId,
    dynamic issue,
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
    List<String>? tags,
    num? order,
    List<num>? scheduleDays,
    dynamic scheduleTimeStart,
    dynamic scheduleTimeEnd,
    dynamic oldMySQLID,
    dynamic color,
    dynamic classEndDate,
    String? state,
    Ext1? ext1,
    dynamic ext2,
    bool? showInAppList,
    dynamic feeRemark,
    String? classRemark,
    String? timeRemark,
    num? discountLessonPrice,
    bool? discount,
    bool? allBuy,
    String? incomeMode,
    num? courseId,
    num? teacherId,
    dynamic assistantId,
    String? createdAt,
    String? updatedAt,
    Brand? brand,
    CourseItem? course,
    TeacherItem? teacher,
    dynamic assistant,
  }) {
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
    _courseId = courseId;
    _teacherId = teacherId;
    _assistantId = assistantId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _brand = brand;
    _course = course;
    _teacher = teacher;
    _assistant = assistant;
  }

  ClassItem.fromJson(dynamic json) {
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
    _tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    _order = json['order'];
    _scheduleDays =
        json['scheduleDays'] != null ? json['scheduleDays'].cast<num>() : [];
    _scheduleTimeStart = json['scheduleTimeStart'];
    _scheduleTimeEnd = json['scheduleTimeEnd'];
    _oldMySQLID = json['oldMySQLID'];
    _color = json['color'];
    _classEndDate = json['classEndDate'];
    _state = json['state'];
    _ext1 = json['ext1'] != null ? Ext1.fromJson(json['ext1']) : null;
    _ext2 = json['ext2'];
    _showInAppList = json['showInAppList'];
    _feeRemark = json['feeRemark'];
    _classRemark = json['classRemark'];
    _timeRemark = json['timeRemark'];
    _discountLessonPrice = json['discountLessonPrice'];
    _discount = json['discount'];
    _allBuy = json['allBuy'];
    _incomeMode = json['incomeMode'];
    _courseId = json['courseId'];
    _teacherId = json['teacherId'];
    _assistantId = json['assistantId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    _course =
        json['course'] != null ? CourseItem.fromJson(json['course']) : null;
    _teacher =
        json['teacher'] != null ? TeacherItem.fromJson(json['teacher']) : null;
    _assistant = json['assistant'];
  }
  num? _id;
  String? _oldObjectId;
  dynamic _issue;
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
  List<String>? _tags;
  num? _order;
  List<num>? _scheduleDays;
  dynamic _scheduleTimeStart;
  dynamic _scheduleTimeEnd;
  dynamic _oldMySQLID;
  dynamic _color;
  dynamic _classEndDate;
  String? _state;
  Ext1? _ext1;
  dynamic _ext2;
  bool? _showInAppList;
  dynamic _feeRemark;
  String? _classRemark;
  String? _timeRemark;
  num? _discountLessonPrice;
  bool? _discount;
  bool? _allBuy;
  String? _incomeMode;
  num? _courseId;
  num? _teacherId;
  dynamic _assistantId;
  String? _createdAt;
  String? _updatedAt;
  Brand? _brand;
  CourseItem? _course;
  TeacherItem? _teacher;
  dynamic _assistant;
  ClassItem copyWith({
    num? id,
    String? oldObjectId,
    dynamic issue,
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
    List<String>? tags,
    num? order,
    List<num>? scheduleDays,
    dynamic scheduleTimeStart,
    dynamic scheduleTimeEnd,
    dynamic oldMySQLID,
    dynamic color,
    dynamic classEndDate,
    String? state,
    Ext1? ext1,
    dynamic ext2,
    bool? showInAppList,
    dynamic feeRemark,
    String? classRemark,
    String? timeRemark,
    num? discountLessonPrice,
    bool? discount,
    bool? allBuy,
    String? incomeMode,
    num? courseId,
    num? teacherId,
    dynamic assistantId,
    String? createdAt,
    String? updatedAt,
    Brand? brand,
    CourseItem? course,
    TeacherItem? teacher,
    dynamic assistant,
  }) =>
      ClassItem(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        issue: issue ?? _issue,
        sn: sn ?? _sn,
        branch: branch ?? _branch,
        roomId: roomId ?? _roomId,
        categoryId: categoryId ?? _categoryId,
        brandId: brandId ?? _brandId,
        title: title ?? _title,
        fee: fee ?? _fee,
        registrationFee: registrationFee ?? _registrationFee,
        startDate: startDate ?? _startDate,
        endDate: endDate ?? _endDate,
        capacity: capacity ?? _capacity,
        lessons: lessons ?? _lessons,
        lessonPrice: lessonPrice ?? _lessonPrice,
        pdac: pdac ?? _pdac,
        tags: tags ?? _tags,
        order: order ?? _order,
        scheduleDays: scheduleDays ?? _scheduleDays,
        scheduleTimeStart: scheduleTimeStart ?? _scheduleTimeStart,
        scheduleTimeEnd: scheduleTimeEnd ?? _scheduleTimeEnd,
        oldMySQLID: oldMySQLID ?? _oldMySQLID,
        color: color ?? _color,
        classEndDate: classEndDate ?? _classEndDate,
        state: state ?? _state,
        ext1: ext1 ?? _ext1,
        ext2: ext2 ?? _ext2,
        showInAppList: showInAppList ?? _showInAppList,
        feeRemark: feeRemark ?? _feeRemark,
        classRemark: classRemark ?? _classRemark,
        timeRemark: timeRemark ?? _timeRemark,
        discountLessonPrice: discountLessonPrice ?? _discountLessonPrice,
        discount: discount ?? _discount,
        allBuy: allBuy ?? _allBuy,
        incomeMode: incomeMode ?? _incomeMode,
        courseId: courseId ?? _courseId,
        teacherId: teacherId ?? _teacherId,
        assistantId: assistantId ?? _assistantId,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        brand: brand ?? _brand,
        course: course ?? _course,
        teacher: teacher ?? _teacher,
        assistant: assistant ?? _assistant,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  dynamic get issue => _issue;
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
  List<String>? get tags => _tags;
  num? get order => _order;
  List<num>? get scheduleDays => _scheduleDays;
  dynamic get scheduleTimeStart => _scheduleTimeStart;
  dynamic get scheduleTimeEnd => _scheduleTimeEnd;
  dynamic get oldMySQLID => _oldMySQLID;
  dynamic get color => _color;
  dynamic get classEndDate => _classEndDate;
  String? get state => _state;
  Ext1? get ext1 => _ext1;
  dynamic get ext2 => _ext2;
  bool? get showInAppList => _showInAppList;
  dynamic get feeRemark => _feeRemark;
  String? get classRemark => _classRemark;
  String? get timeRemark => _timeRemark;
  num? get discountLessonPrice => _discountLessonPrice;
  bool? get discount => _discount;
  bool? get allBuy => _allBuy;
  String? get incomeMode => _incomeMode;
  num? get courseId => _courseId;
  num? get teacherId => _teacherId;
  dynamic get assistantId => _assistantId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Brand? get brand => _brand;
  CourseItem? get course => _course;
  TeacherItem? get teacher => _teacher;
  dynamic get assistant => _assistant;

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
    map['ext2'] = _ext2;
    map['showInAppList'] = _showInAppList;
    map['feeRemark'] = _feeRemark;
    map['classRemark'] = _classRemark;
    map['timeRemark'] = _timeRemark;
    map['discountLessonPrice'] = _discountLessonPrice;
    map['discount'] = _discount;
    map['allBuy'] = _allBuy;
    map['incomeMode'] = _incomeMode;
    map['courseId'] = _courseId;
    map['teacherId'] = _teacherId;
    map['assistantId'] = _assistantId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    if (_course != null) {
      map['course'] = _course?.toJson();
    }
    if (_teacher != null) {
      map['teacher'] = _teacher?.toJson();
    }
    map['assistant'] = _assistant;
    return map;
  }
}

/// id : 54
/// oldObjectId : "x51Jpz3arY"
/// number : "020"
/// displayName : "梅越明"
/// avatar : null
/// gender : "f"
/// phone : "65990860"
/// description : ""
/// recommend : false
/// createdAt : "2024-03-27T06:26:14.200Z"
/// updatedAt : "2024-03-27T06:34:01.007Z"

/// id : 6
/// oldObjectId : "3XuY3IEJJ3"
/// title : "珠心算課程"
/// code : "ABACUS_COURSE"
/// description : null
/// cover : null
/// parentId : 5
/// order : 0
/// oldMySQLID : 50
/// createdAt : "2024-03-27T06:27:15.148Z"
/// updatedAt : "2024-03-27T06:59:15.572Z"

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
    num? parentId,
    num? order,
    num? oldMySQLID,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _oldObjectId = oldObjectId;
    _title = title;
    _code = code;
    _description = description;
    _cover = cover;
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
  num? _parentId;
  num? _order;
  num? _oldMySQLID;
  String? _createdAt;
  String? _updatedAt;
  Category copyWith({
    num? id,
    String? oldObjectId,
    String? title,
    String? code,
    dynamic description,
    dynamic cover,
    num? parentId,
    num? order,
    num? oldMySQLID,
    String? createdAt,
    String? updatedAt,
  }) =>
      Category(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        title: title ?? _title,
        code: code ?? _code,
        description: description ?? _description,
        cover: cover ?? _cover,
        parentId: parentId ?? _parentId,
        order: order ?? _order,
        oldMySQLID: oldMySQLID ?? _oldMySQLID,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get title => _title;
  String? get code => _code;
  dynamic get description => _description;
  dynamic get cover => _cover;
  num? get parentId => _parentId;
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
    map['parentId'] = _parentId;
    map['order'] = _order;
    map['oldMySQLID'] = _oldMySQLID;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// id : 3
/// oldObjectId : "Myh0wuBxBN"
/// title : "珠心算專業教育（澳門）有限公司"
/// code : "FINANCE_ADACUS_COMPANY"
/// description : null
/// order : null
/// createdAt : "2024-03-27T06:26:07.816Z"
/// updatedAt : "2024-03-27T06:32:56.377Z"

Brand brandFromJson(String str) => Brand.fromJson(json.decode(str));
String brandToJson(Brand data) => json.encode(data.toJson());

class Brand {
  Brand({
    num? id,
    String? oldObjectId,
    String? title,
    String? code,
    dynamic description,
    dynamic order,
    String? createdAt,
    String? updatedAt,
  }) {
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
  dynamic _order;
  String? _createdAt;
  String? _updatedAt;
  Brand copyWith({
    num? id,
    String? oldObjectId,
    String? title,
    String? code,
    dynamic description,
    dynamic order,
    String? createdAt,
    String? updatedAt,
  }) =>
      Brand(
        id: id ?? _id,
        oldObjectId: oldObjectId ?? _oldObjectId,
        title: title ?? _title,
        code: code ?? _code,
        description: description ?? _description,
        order: order ?? _order,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get oldObjectId => _oldObjectId;
  String? get title => _title;
  String? get code => _code;
  dynamic get description => _description;
  dynamic get order => _order;
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

/// enrolled : 4
/// realEnrolled : 4

Ext1 ext1FromJson(String str) => Ext1.fromJson(json.decode(str));
String ext1ToJson(Ext1 data) => json.encode(data.toJson());

class Ext1 {
  Ext1({
    num? enrolled,
    num? realEnrolled,
  }) {
    _enrolled = enrolled;
    _realEnrolled = realEnrolled;
  }

  Ext1.fromJson(dynamic json) {
    _enrolled = json['enrolled'];
    _realEnrolled = json['realEnrolled'];
  }
  num? _enrolled;
  num? _realEnrolled;
  Ext1 copyWith({
    num? enrolled,
    num? realEnrolled,
  }) =>
      Ext1(
        enrolled: enrolled ?? _enrolled,
        realEnrolled: realEnrolled ?? _realEnrolled,
      );
  num? get enrolled => _enrolled;
  num? get realEnrolled => _realEnrolled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enrolled'] = _enrolled;
    map['realEnrolled'] = _realEnrolled;
    return map;
  }
}
