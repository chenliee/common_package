import 'dart:convert';
/// id : 1152
/// remark : null
/// paidWait : 3190
/// branch : "B0000797"
/// studentName : "耐摔王1号"
/// studentNo : "B00007970001"
/// orderBy : null
/// orderTo : "2024-06-30T00:00:00.000Z"
/// orderFrom : "2024-06-01T00:00:00.000Z"
/// number : "TO2405150004"
/// paid : 0
/// coupons : null
/// discounts : null
/// state : "init"
/// schoolYearId : 8
/// paidConfirm : 0
/// schoolId : 76
/// transactions : null
/// realAmount : 5268
/// amount : 5270
/// studentId : 231
/// createdAt : "2024-05-15T01:50:12.075Z"
/// updatedAt : "2024-06-28T03:03:08.044Z"
/// deletedAt : null
/// mongoDBId : "wFnxCJzb4z"
/// student : {"id":231,"gender":null,"branch":"B0000797","specialNeeds":null,"number":"B00007970001","appetite":1,"favourites":null,"characters":null,"phone":"62251111","state":"active","displayName":"耐摔王","resultRecord":null,"schoolYearId":8,"balanceAccount":"B00007970001","allergyDrugs":null,"autoTransferAccount":"YL1800076","enName":null,"schoolId":76,"allergyFoods":null,"avatar":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/91a8cb307a535be015870534f2a4e633bf8cfa8763b9a2e9d25780c08368a63fb4d13d67dfa1c7626ed66eed552978fe1da32e54b7fe278c65dcbeca7b3ef1e1.jpg","name":"24a0b1d29d99c7b5569f54556d013518_08bd9a2b6059252d0a3039ce719b033b5ab5b99f.jpg","__type":"File"},"parentRequirements":null,"member":null,"registrationForm":null,"joinAt":"2023-12-15T16:00:00.000Z","mongoDBId":"TojJ4Ut4ED","birthday":null,"referrerId":null,"card":null,"createdAt":"2023-12-15T02:02:51.293Z","updatedAt":"2024-05-09T05:24:50.892Z","deletedAt":null}
/// school : {"id":76,"code":"S006","displayName":"婦聯學校","order":4,"location":null,"mongoDBId":"ZP0dEJZENM","createdAt":"2021-11-19T10:35:52.616Z","updatedAt":"2024-05-10T09:36:27.154Z","deletedAt":null}
/// schoolYear : {"id":8,"code":"p3","type":"primary","order":0,"displayName":"小三","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-05-10T09:37:35.646Z","deletedAt":null,"mongoDBId":"KLJhZmsCEp"}
/// items : [{"id":2388,"orderId":1152,"remark":"你好","branch":"B0000797","servicesTable":[{"code":"TUIFEE00P3","label":"小三補習費","value":2101}],"quantity":1,"displayName":"小三一條龍","realAmount":3188,"amount":3190,"serviceId":660,"createdAt":"2024-06-24T06:08:52.112Z","updatedAt":"2024-06-28T03:03:08.196Z","mongoDBId":null,"service":{"id":660,"title":"小三一條龍","packageId":1,"price":3190,"common":false,"code":"5mpZrTYfdj:TUICHG0001+TUIFEE00P3+TUIMEAL001+TUIMEAL200","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P3","label":"小三補習費","value":2100}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2023-05-23T05:24:22.142Z","updatedAt":"2024-06-04T02:43:09.209Z","deletedAt":null,"mongoDBId":"xwLGRuLYvm","package":{"id":1,"title":"5.23套餐低小套餐","code":"5mpZrTYfdj","version":null,"appNotShow":false,"withBranches":null,"withoutBranches":["50"],"dateTo":null,"dateFrom":null,"mongoDBId":"5mpZrTYfdj","order":0,"createdAt":"2023-05-23T05:18:17.339Z","updatedAt":"2024-06-03T06:07:34.028Z","deletedAt":null},"category":null,"bindServices":[{"id":49,"title":"小三補習費","packageId":null,"price":2100,"common":false,"code":"TUIFEE00P3","categoryId":19,"order":5,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P3","value":2100}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:23:16.466Z","deletedAt":null,"mongoDBId":"4lMdsmJrvF","package":null,"category":{"id":19,"code":"primary_tuition","order":0,"cover":null,"title":"小學補習","description":null,"createdAt":"2022-06-02T02:00:48.775Z","updatedAt":"2024-05-10T09:38:35.064Z","deletedAt":null,"mongoDBId":"wPV4bYyPDN"}}]}}]

TuitionOrderModel tuitionOrderModelFromJson(String str) => TuitionOrderModel.fromJson(json.decode(str));
String tuitionOrderModelToJson(TuitionOrderModel data) => json.encode(data.toJson());
class TuitionOrderModel {
  TuitionOrderModel({
      num? id, 
      dynamic remark, 
      num? paidWait, 
      String? branch, 
      String? studentName, 
      String? studentNo, 
      dynamic orderBy, 
      String? orderTo, 
      String? orderFrom, 
      String? number, 
      num? paid, 
      dynamic coupons, 
      dynamic discounts, 
      String? state, 
      num? schoolYearId, 
      num? paidConfirm, 
      num? schoolId, 
      dynamic transactions, 
      num? realAmount, 
      num? amount, 
      num? studentId, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? mongoDBId, 
      Student? student, 
      School? school, 
      SchoolYear? schoolYear, 
      List<Items>? items,}){
    _id = id;
    _remark = remark;
    _paidWait = paidWait;
    _branch = branch;
    _studentName = studentName;
    _studentNo = studentNo;
    _orderBy = orderBy;
    _orderTo = orderTo;
    _orderFrom = orderFrom;
    _number = number;
    _paid = paid;
    _coupons = coupons;
    _discounts = discounts;
    _state = state;
    _schoolYearId = schoolYearId;
    _paidConfirm = paidConfirm;
    _schoolId = schoolId;
    _transactions = transactions;
    _realAmount = realAmount;
    _amount = amount;
    _studentId = studentId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _mongoDBId = mongoDBId;
    _student = student;
    _school = school;
    _schoolYear = schoolYear;
    _items = items;
}

  TuitionOrderModel.fromJson(dynamic json) {
    _id = json['id'];
    _remark = json['remark'];
    _paidWait = json['paidWait'];
    _branch = json['branch'];
    _studentName = json['studentName'];
    _studentNo = json['studentNo'];
    _orderBy = json['orderBy'];
    _orderTo = json['orderTo'];
    _orderFrom = json['orderFrom'];
    _number = json['number'];
    _paid = json['paid'];
    _coupons = json['coupons'];
    _discounts = json['discounts'];
    _state = json['state'];
    _schoolYearId = json['schoolYearId'];
    _paidConfirm = json['paidConfirm'];
    _schoolId = json['schoolId'];
    _transactions = json['transactions'];
    _realAmount = json['realAmount'];
    _amount = json['amount'];
    _studentId = json['studentId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _mongoDBId = json['mongoDBId'];
    _student = json['student'] != null ? Student.fromJson(json['student']) : null;
    _school = json['school'] != null ? School.fromJson(json['school']) : null;
    _schoolYear = json['schoolYear'] != null ? SchoolYear.fromJson(json['schoolYear']) : null;
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }
  num? _id;
  dynamic _remark;
  num? _paidWait;
  String? _branch;
  String? _studentName;
  String? _studentNo;
  dynamic _orderBy;
  String? _orderTo;
  String? _orderFrom;
  String? _number;
  num? _paid;
  dynamic _coupons;
  dynamic _discounts;
  String? _state;
  num? _schoolYearId;
  num? _paidConfirm;
  num? _schoolId;
  dynamic _transactions;
  num? _realAmount;
  num? _amount;
  num? _studentId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _mongoDBId;
  Student? _student;
  School? _school;
  SchoolYear? _schoolYear;
  List<Items>? _items;

  num? get id => _id;
  dynamic get remark => _remark;
  num? get paidWait => _paidWait;
  String? get branch => _branch;
  String? get studentName => _studentName;
  String? get studentNo => _studentNo;
  dynamic get orderBy => _orderBy;
  String? get orderTo => _orderTo;
  String? get orderFrom => _orderFrom;
  String? get number => _number;
  num? get paid => _paid;
  dynamic get coupons => _coupons;
  dynamic get discounts => _discounts;
  String? get state => _state;
  num? get schoolYearId => _schoolYearId;
  num? get paidConfirm => _paidConfirm;
  num? get schoolId => _schoolId;
  dynamic get transactions => _transactions;
  num? get realAmount => _realAmount;
  num? get amount => _amount;
  num? get studentId => _studentId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get mongoDBId => _mongoDBId;
  Student? get student => _student;
  School? get school => _school;
  SchoolYear? get schoolYear => _schoolYear;
  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['remark'] = _remark;
    map['paidWait'] = _paidWait;
    map['branch'] = _branch;
    map['studentName'] = _studentName;
    map['studentNo'] = _studentNo;
    map['orderBy'] = _orderBy;
    map['orderTo'] = _orderTo;
    map['orderFrom'] = _orderFrom;
    map['number'] = _number;
    map['paid'] = _paid;
    map['coupons'] = _coupons;
    map['discounts'] = _discounts;
    map['state'] = _state;
    map['schoolYearId'] = _schoolYearId;
    map['paidConfirm'] = _paidConfirm;
    map['schoolId'] = _schoolId;
    map['transactions'] = _transactions;
    map['realAmount'] = _realAmount;
    map['amount'] = _amount;
    map['studentId'] = _studentId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['mongoDBId'] = _mongoDBId;
    if (_student != null) {
      map['student'] = _student?.toJson();
    }
    if (_school != null) {
      map['school'] = _school?.toJson();
    }
    if (_schoolYear != null) {
      map['schoolYear'] = _schoolYear?.toJson();
    }
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2388
/// orderId : 1152
/// remark : "你好"
/// branch : "B0000797"
/// servicesTable : [{"code":"TUIFEE00P3","label":"小三補習費","value":2101}]
/// quantity : 1
/// displayName : "小三一條龍"
/// realAmount : 3188
/// amount : 3190
/// serviceId : 660
/// createdAt : "2024-06-24T06:08:52.112Z"
/// updatedAt : "2024-06-28T03:03:08.196Z"
/// mongoDBId : null
/// service : {"id":660,"title":"小三一條龍","packageId":1,"price":3190,"common":false,"code":"5mpZrTYfdj:TUICHG0001+TUIFEE00P3+TUIMEAL001+TUIMEAL200","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P3","label":"小三補習費","value":2100}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2023-05-23T05:24:22.142Z","updatedAt":"2024-06-04T02:43:09.209Z","deletedAt":null,"mongoDBId":"xwLGRuLYvm","package":{"id":1,"title":"5.23套餐低小套餐","code":"5mpZrTYfdj","version":null,"appNotShow":false,"withBranches":null,"withoutBranches":["50"],"dateTo":null,"dateFrom":null,"mongoDBId":"5mpZrTYfdj","order":0,"createdAt":"2023-05-23T05:18:17.339Z","updatedAt":"2024-06-03T06:07:34.028Z","deletedAt":null},"category":null,"bindServices":[{"id":49,"title":"小三補習費","packageId":null,"price":2100,"common":false,"code":"TUIFEE00P3","categoryId":19,"order":5,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P3","value":2100}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:23:16.466Z","deletedAt":null,"mongoDBId":"4lMdsmJrvF","package":null,"category":{"id":19,"code":"primary_tuition","order":0,"cover":null,"title":"小學補習","description":null,"createdAt":"2022-06-02T02:00:48.775Z","updatedAt":"2024-05-10T09:38:35.064Z","deletedAt":null,"mongoDBId":"wPV4bYyPDN"}}]}

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));
String itemsToJson(Items data) => json.encode(data.toJson());
class Items {
  Items({
      num? id, 
      num? orderId, 
      String? remark, 
      String? branch, 
      List<ServicesTable>? servicesTable, 
      num? quantity, 
      String? displayName, 
      num? realAmount, 
      num? amount, 
      num? serviceId, 
      String? createdAt, 
      String? updatedAt, 
      dynamic mongoDBId, 
      Service? service,}){
    _id = id;
    _orderId = orderId;
    _remark = remark;
    _branch = branch;
    _servicesTable = servicesTable;
    _quantity = quantity;
    _displayName = displayName;
    _realAmount = realAmount;
    _amount = amount;
    _serviceId = serviceId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _mongoDBId = mongoDBId;
    _service = service;
}

  Items.fromJson(dynamic json) {
    _id = json['id'];
    _orderId = json['orderId'];
    _remark = json['remark'];
    _branch = json['branch'];
    if (json['servicesTable'] != null) {
      _servicesTable = [];
      json['servicesTable'].forEach((v) {
        _servicesTable?.add(ServicesTable.fromJson(v));
      });
    }
    _quantity = json['quantity'];
    _displayName = json['displayName'];
    _realAmount = json['realAmount'];
    _amount = json['amount'];
    _serviceId = json['serviceId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _mongoDBId = json['mongoDBId'];
    _service = json['service'] != null ? Service.fromJson(json['service']) : null;
  }
  num? _id;
  num? _orderId;
  String? _remark;
  String? _branch;
  List<ServicesTable>? _servicesTable;
  num? _quantity;
  String? _displayName;
  num? _realAmount;
  num? _amount;
  num? _serviceId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _mongoDBId;
  Service? _service;

  num? get id => _id;
  num? get orderId => _orderId;
  String? get remark => _remark;
  String? get branch => _branch;
  List<ServicesTable>? get servicesTable => _servicesTable;
  num? get quantity => _quantity;
  String? get displayName => _displayName;
  num? get realAmount => _realAmount;
  num? get amount => _amount;
  num? get serviceId => _serviceId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get mongoDBId => _mongoDBId;
  Service? get service => _service;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['orderId'] = _orderId;
    map['remark'] = _remark;
    map['branch'] = _branch;
    if (_servicesTable != null) {
      map['servicesTable'] = _servicesTable?.map((v) => v.toJson()).toList();
    }
    map['quantity'] = _quantity;
    map['displayName'] = _displayName;
    map['realAmount'] = _realAmount;
    map['amount'] = _amount;
    map['serviceId'] = _serviceId;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['mongoDBId'] = _mongoDBId;
    if (_service != null) {
      map['service'] = _service?.toJson();
    }
    return map;
  }

}

/// id : 660
/// title : "小三一條龍"
/// packageId : 1
/// price : 3190
/// common : false
/// code : "5mpZrTYfdj:TUICHG0001+TUIFEE00P3+TUIMEAL001+TUIMEAL200"
/// categoryId : null
/// order : 0
/// detailLog : null
/// description : null
/// servicesTable : [{"code":"TUIFEE00P3","label":"小三補習費","value":2100}]
/// withBranches : null
/// withoutBranches : null
/// tags : null
/// color : null
/// licence : null
/// images : null
/// appShow : false
/// userEndNotDisplay : false
/// permit : null
/// noDiscount : false
/// recordIdCode : null
/// cover : null
/// createdAt : "2023-05-23T05:24:22.142Z"
/// updatedAt : "2024-06-04T02:43:09.209Z"
/// deletedAt : null
/// mongoDBId : "xwLGRuLYvm"
/// package : {"id":1,"title":"5.23套餐低小套餐","code":"5mpZrTYfdj","version":null,"appNotShow":false,"withBranches":null,"withoutBranches":["50"],"dateTo":null,"dateFrom":null,"mongoDBId":"5mpZrTYfdj","order":0,"createdAt":"2023-05-23T05:18:17.339Z","updatedAt":"2024-06-03T06:07:34.028Z","deletedAt":null}
/// category : null
/// bindServices : [{"id":49,"title":"小三補習費","packageId":null,"price":2100,"common":false,"code":"TUIFEE00P3","categoryId":19,"order":5,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P3","value":2100}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:23:16.466Z","deletedAt":null,"mongoDBId":"4lMdsmJrvF","package":null,"category":{"id":19,"code":"primary_tuition","order":0,"cover":null,"title":"小學補習","description":null,"createdAt":"2022-06-02T02:00:48.775Z","updatedAt":"2024-05-10T09:38:35.064Z","deletedAt":null,"mongoDBId":"wPV4bYyPDN"}}]

Service serviceFromJson(String str) => Service.fromJson(json.decode(str));
String serviceToJson(Service data) => json.encode(data.toJson());
class Service {
  Service({
      num? id, 
      String? title, 
      num? packageId, 
      num? price, 
      bool? common, 
      String? code, 
      dynamic categoryId, 
      num? order, 
      dynamic detailLog, 
      dynamic description, 
      List<ServicesTable>? servicesTable, 
      dynamic withBranches, 
      dynamic withoutBranches, 
      dynamic tags, 
      dynamic color, 
      dynamic licence, 
      dynamic images, 
      bool? appShow, 
      bool? userEndNotDisplay, 
      dynamic permit, 
      bool? noDiscount, 
      dynamic recordIdCode, 
      dynamic cover, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? mongoDBId, 
      Package? package, 
      dynamic category, 
      List<BindServices>? bindServices,}){
    _id = id;
    _title = title;
    _packageId = packageId;
    _price = price;
    _common = common;
    _code = code;
    _categoryId = categoryId;
    _order = order;
    _detailLog = detailLog;
    _description = description;
    _servicesTable = servicesTable;
    _withBranches = withBranches;
    _withoutBranches = withoutBranches;
    _tags = tags;
    _color = color;
    _licence = licence;
    _images = images;
    _appShow = appShow;
    _userEndNotDisplay = userEndNotDisplay;
    _permit = permit;
    _noDiscount = noDiscount;
    _recordIdCode = recordIdCode;
    _cover = cover;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _mongoDBId = mongoDBId;
    _package = package;
    _category = category;
    _bindServices = bindServices;
}

  Service.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _packageId = json['packageId'];
    _price = json['price'];
    _common = json['common'];
    _code = json['code'];
    _categoryId = json['categoryId'];
    _order = json['order'];
    _detailLog = json['detailLog'];
    _description = json['description'];
    if (json['servicesTable'] != null) {
      _servicesTable = [];
      json['servicesTable'].forEach((v) {
        _servicesTable?.add(ServicesTable.fromJson(v));
      });
    }
    _withBranches = json['withBranches'];
    _withoutBranches = json['withoutBranches'];
    _tags = json['tags'];
    _color = json['color'];
    _licence = json['licence'];
    _images = json['images'];
    _appShow = json['appShow'];
    _userEndNotDisplay = json['userEndNotDisplay'];
    _permit = json['permit'];
    _noDiscount = json['noDiscount'];
    _recordIdCode = json['recordIdCode'];
    _cover = json['cover'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _mongoDBId = json['mongoDBId'];
    _package = json['package'] != null ? Package.fromJson(json['package']) : null;
    _category = json['category'];
    if (json['bindServices'] != null) {
      _bindServices = [];
      json['bindServices'].forEach((v) {
        _bindServices?.add(BindServices.fromJson(v));
      });
    }
  }
  num? _id;
  String? _title;
  num? _packageId;
  num? _price;
  bool? _common;
  String? _code;
  dynamic _categoryId;
  num? _order;
  dynamic _detailLog;
  dynamic _description;
  List<ServicesTable>? _servicesTable;
  dynamic _withBranches;
  dynamic _withoutBranches;
  dynamic _tags;
  dynamic _color;
  dynamic _licence;
  dynamic _images;
  bool? _appShow;
  bool? _userEndNotDisplay;
  dynamic _permit;
  bool? _noDiscount;
  dynamic _recordIdCode;
  dynamic _cover;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _mongoDBId;
  Package? _package;
  dynamic _category;
  List<BindServices>? _bindServices;

  num? get id => _id;
  String? get title => _title;
  num? get packageId => _packageId;
  num? get price => _price;
  bool? get common => _common;
  String? get code => _code;
  dynamic get categoryId => _categoryId;
  num? get order => _order;
  dynamic get detailLog => _detailLog;
  dynamic get description => _description;
  List<ServicesTable>? get servicesTable => _servicesTable;
  dynamic get withBranches => _withBranches;
  dynamic get withoutBranches => _withoutBranches;
  dynamic get tags => _tags;
  dynamic get color => _color;
  dynamic get licence => _licence;
  dynamic get images => _images;
  bool? get appShow => _appShow;
  bool? get userEndNotDisplay => _userEndNotDisplay;
  dynamic get permit => _permit;
  bool? get noDiscount => _noDiscount;
  dynamic get recordIdCode => _recordIdCode;
  dynamic get cover => _cover;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get mongoDBId => _mongoDBId;
  Package? get package => _package;
  dynamic get category => _category;
  List<BindServices>? get bindServices => _bindServices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['packageId'] = _packageId;
    map['price'] = _price;
    map['common'] = _common;
    map['code'] = _code;
    map['categoryId'] = _categoryId;
    map['order'] = _order;
    map['detailLog'] = _detailLog;
    map['description'] = _description;
    if (_servicesTable != null) {
      map['servicesTable'] = _servicesTable?.map((v) => v.toJson()).toList();
    }
    map['withBranches'] = _withBranches;
    map['withoutBranches'] = _withoutBranches;
    map['tags'] = _tags;
    map['color'] = _color;
    map['licence'] = _licence;
    map['images'] = _images;
    map['appShow'] = _appShow;
    map['userEndNotDisplay'] = _userEndNotDisplay;
    map['permit'] = _permit;
    map['noDiscount'] = _noDiscount;
    map['recordIdCode'] = _recordIdCode;
    map['cover'] = _cover;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['mongoDBId'] = _mongoDBId;
    if (_package != null) {
      map['package'] = _package?.toJson();
    }
    map['category'] = _category;
    if (_bindServices != null) {
      map['bindServices'] = _bindServices?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 49
/// title : "小三補習費"
/// packageId : null
/// price : 2100
/// common : false
/// code : "TUIFEE00P3"
/// categoryId : 19
/// order : 5
/// detailLog : null
/// description : null
/// servicesTable : [{"code":"TUIFEE00P3","value":2100}]
/// withBranches : null
/// withoutBranches : null
/// tags : null
/// color : null
/// licence : null
/// images : null
/// appShow : false
/// userEndNotDisplay : false
/// permit : null
/// noDiscount : false
/// recordIdCode : null
/// cover : null
/// createdAt : "2021-11-19T10:35:55.221Z"
/// updatedAt : "2024-06-04T02:23:16.466Z"
/// deletedAt : null
/// mongoDBId : "4lMdsmJrvF"
/// package : null
/// category : {"id":19,"code":"primary_tuition","order":0,"cover":null,"title":"小學補習","description":null,"createdAt":"2022-06-02T02:00:48.775Z","updatedAt":"2024-05-10T09:38:35.064Z","deletedAt":null,"mongoDBId":"wPV4bYyPDN"}

BindServices bindServicesFromJson(String str) => BindServices.fromJson(json.decode(str));
String bindServicesToJson(BindServices data) => json.encode(data.toJson());
class BindServices {
  BindServices({
      num? id, 
      String? title, 
      dynamic packageId, 
      num? price, 
      bool? common, 
      String? code, 
      num? categoryId, 
      num? order, 
      dynamic detailLog, 
      dynamic description, 
      List<ServicesTable>? servicesTable, 
      dynamic withBranches, 
      dynamic withoutBranches, 
      dynamic tags, 
      dynamic color, 
      dynamic licence, 
      dynamic images, 
      bool? appShow, 
      bool? userEndNotDisplay, 
      dynamic permit, 
      bool? noDiscount, 
      dynamic recordIdCode, 
      dynamic cover, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? mongoDBId, 
      dynamic package, 
      Category? category,}){
    _id = id;
    _title = title;
    _packageId = packageId;
    _price = price;
    _common = common;
    _code = code;
    _categoryId = categoryId;
    _order = order;
    _detailLog = detailLog;
    _description = description;
    _servicesTable = servicesTable;
    _withBranches = withBranches;
    _withoutBranches = withoutBranches;
    _tags = tags;
    _color = color;
    _licence = licence;
    _images = images;
    _appShow = appShow;
    _userEndNotDisplay = userEndNotDisplay;
    _permit = permit;
    _noDiscount = noDiscount;
    _recordIdCode = recordIdCode;
    _cover = cover;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _mongoDBId = mongoDBId;
    _package = package;
    _category = category;
}

  BindServices.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _packageId = json['packageId'];
    _price = json['price'];
    _common = json['common'];
    _code = json['code'];
    _categoryId = json['categoryId'];
    _order = json['order'];
    _detailLog = json['detailLog'];
    _description = json['description'];
    if (json['servicesTable'] != null) {
      _servicesTable = [];
      json['servicesTable'].forEach((v) {
        _servicesTable?.add(ServicesTable.fromJson(v));
      });
    }
    _withBranches = json['withBranches'];
    _withoutBranches = json['withoutBranches'];
    _tags = json['tags'];
    _color = json['color'];
    _licence = json['licence'];
    _images = json['images'];
    _appShow = json['appShow'];
    _userEndNotDisplay = json['userEndNotDisplay'];
    _permit = json['permit'];
    _noDiscount = json['noDiscount'];
    _recordIdCode = json['recordIdCode'];
    _cover = json['cover'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _mongoDBId = json['mongoDBId'];
    _package = json['package'];
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }
  num? _id;
  String? _title;
  dynamic _packageId;
  num? _price;
  bool? _common;
  String? _code;
  num? _categoryId;
  num? _order;
  dynamic _detailLog;
  dynamic _description;
  List<ServicesTable>? _servicesTable;
  dynamic _withBranches;
  dynamic _withoutBranches;
  dynamic _tags;
  dynamic _color;
  dynamic _licence;
  dynamic _images;
  bool? _appShow;
  bool? _userEndNotDisplay;
  dynamic _permit;
  bool? _noDiscount;
  dynamic _recordIdCode;
  dynamic _cover;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _mongoDBId;
  dynamic _package;
  Category? _category;

  num? get id => _id;
  String? get title => _title;
  dynamic get packageId => _packageId;
  num? get price => _price;
  bool? get common => _common;
  String? get code => _code;
  num? get categoryId => _categoryId;
  num? get order => _order;
  dynamic get detailLog => _detailLog;
  dynamic get description => _description;
  List<ServicesTable>? get servicesTable => _servicesTable;
  dynamic get withBranches => _withBranches;
  dynamic get withoutBranches => _withoutBranches;
  dynamic get tags => _tags;
  dynamic get color => _color;
  dynamic get licence => _licence;
  dynamic get images => _images;
  bool? get appShow => _appShow;
  bool? get userEndNotDisplay => _userEndNotDisplay;
  dynamic get permit => _permit;
  bool? get noDiscount => _noDiscount;
  dynamic get recordIdCode => _recordIdCode;
  dynamic get cover => _cover;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get mongoDBId => _mongoDBId;
  dynamic get package => _package;
  Category? get category => _category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['packageId'] = _packageId;
    map['price'] = _price;
    map['common'] = _common;
    map['code'] = _code;
    map['categoryId'] = _categoryId;
    map['order'] = _order;
    map['detailLog'] = _detailLog;
    map['description'] = _description;
    if (_servicesTable != null) {
      map['servicesTable'] = _servicesTable?.map((v) => v.toJson()).toList();
    }
    map['withBranches'] = _withBranches;
    map['withoutBranches'] = _withoutBranches;
    map['tags'] = _tags;
    map['color'] = _color;
    map['licence'] = _licence;
    map['images'] = _images;
    map['appShow'] = _appShow;
    map['userEndNotDisplay'] = _userEndNotDisplay;
    map['permit'] = _permit;
    map['noDiscount'] = _noDiscount;
    map['recordIdCode'] = _recordIdCode;
    map['cover'] = _cover;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['mongoDBId'] = _mongoDBId;
    map['package'] = _package;
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    return map;
  }

}

/// id : 19
/// code : "primary_tuition"
/// order : 0
/// cover : null
/// title : "小學補習"
/// description : null
/// createdAt : "2022-06-02T02:00:48.775Z"
/// updatedAt : "2024-05-10T09:38:35.064Z"
/// deletedAt : null
/// mongoDBId : "wPV4bYyPDN"

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));
String categoryToJson(Category data) => json.encode(data.toJson());
class Category {
  Category({
      num? id, 
      String? code, 
      num? order, 
      dynamic cover, 
      String? title, 
      dynamic description, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? mongoDBId,}){
    _id = id;
    _code = code;
    _order = order;
    _cover = cover;
    _title = title;
    _description = description;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _mongoDBId = mongoDBId;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _order = json['order'];
    _cover = json['cover'];
    _title = json['title'];
    _description = json['description'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
    _mongoDBId = json['mongoDBId'];
  }
  num? _id;
  String? _code;
  num? _order;
  dynamic _cover;
  String? _title;
  dynamic _description;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _mongoDBId;

  num? get id => _id;
  String? get code => _code;
  num? get order => _order;
  dynamic get cover => _cover;
  String? get title => _title;
  dynamic get description => _description;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get mongoDBId => _mongoDBId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['order'] = _order;
    map['cover'] = _cover;
    map['title'] = _title;
    map['description'] = _description;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    map['mongoDBId'] = _mongoDBId;
    return map;
  }

}

/// code : "TUIFEE00P3"
/// value : 2100

ServicesTable servicesTableFromJson(String str) => ServicesTable.fromJson(json.decode(str));
String servicesTableToJson(ServicesTable data) => json.encode(data.toJson());
class ServicesTable {
  ServicesTable({
      String? code, 
      num? value,}){
    _code = code;
    _value = value;
}

  ServicesTable.fromJson(dynamic json) {
    _code = json['code'];
    _value = json['value'];
  }
  String? _code;
  num? _value;

  String? get code => _code;
  num? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['value'] = _value;
    return map;
  }

}

/// id : 1
/// title : "5.23套餐低小套餐"
/// code : "5mpZrTYfdj"
/// version : null
/// appNotShow : false
/// withBranches : null
/// withoutBranches : ["50"]
/// dateTo : null
/// dateFrom : null
/// mongoDBId : "5mpZrTYfdj"
/// order : 0
/// createdAt : "2023-05-23T05:18:17.339Z"
/// updatedAt : "2024-06-03T06:07:34.028Z"
/// deletedAt : null

Package packageFromJson(String str) => Package.fromJson(json.decode(str));
String packageToJson(Package data) => json.encode(data.toJson());
class Package {
  Package({
      num? id, 
      String? title, 
      String? code, 
      dynamic version, 
      bool? appNotShow, 
      dynamic withBranches, 
      List<String>? withoutBranches, 
      dynamic dateTo, 
      dynamic dateFrom, 
      String? mongoDBId, 
      num? order, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt,}){
    _id = id;
    _title = title;
    _code = code;
    _version = version;
    _appNotShow = appNotShow;
    _withBranches = withBranches;
    _withoutBranches = withoutBranches;
    _dateTo = dateTo;
    _dateFrom = dateFrom;
    _mongoDBId = mongoDBId;
    _order = order;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  Package.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _code = json['code'];
    _version = json['version'];
    _appNotShow = json['appNotShow'];
    _withBranches = json['withBranches'];
    _withoutBranches = json['withoutBranches'] != null ? json['withoutBranches'].cast<String>() : [];
    _dateTo = json['dateTo'];
    _dateFrom = json['dateFrom'];
    _mongoDBId = json['mongoDBId'];
    _order = json['order'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];
  }
  num? _id;
  String? _title;
  String? _code;
  dynamic _version;
  bool? _appNotShow;
  dynamic _withBranches;
  List<String>? _withoutBranches;
  dynamic _dateTo;
  dynamic _dateFrom;
  String? _mongoDBId;
  num? _order;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;

  num? get id => _id;
  String? get title => _title;
  String? get code => _code;
  dynamic get version => _version;
  bool? get appNotShow => _appNotShow;
  dynamic get withBranches => _withBranches;
  List<String>? get withoutBranches => _withoutBranches;
  dynamic get dateTo => _dateTo;
  dynamic get dateFrom => _dateFrom;
  String? get mongoDBId => _mongoDBId;
  num? get order => _order;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['code'] = _code;
    map['version'] = _version;
    map['appNotShow'] = _appNotShow;
    map['withBranches'] = _withBranches;
    map['withoutBranches'] = _withoutBranches;
    map['dateTo'] = _dateTo;
    map['dateFrom'] = _dateFrom;
    map['mongoDBId'] = _mongoDBId;
    map['order'] = _order;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['deletedAt'] = _deletedAt;
    return map;
  }

}


/// id : 8
/// code : "p3"
/// type : "primary"
/// order : 0
/// displayName : "小三"
/// createdAt : "2021-11-19T10:35:53.799Z"
/// updatedAt : "2024-05-10T09:37:35.646Z"
/// deletedAt : null
/// mongoDBId : "KLJhZmsCEp"

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
      String? mongoDBId,}){
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

/// id : 76
/// code : "S006"
/// displayName : "婦聯學校"
/// order : 4
/// location : null
/// mongoDBId : "ZP0dEJZENM"
/// createdAt : "2021-11-19T10:35:52.616Z"
/// updatedAt : "2024-05-10T09:36:27.154Z"
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
      dynamic deletedAt,}){
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

/// id : 231
/// gender : null
/// branch : "B0000797"
/// specialNeeds : null
/// number : "B00007970001"
/// appetite : 1
/// favourites : null
/// characters : null
/// phone : "62251111"
/// state : "active"
/// displayName : "耐摔王"
/// resultRecord : null
/// schoolYearId : 8
/// balanceAccount : "B00007970001"
/// allergyDrugs : null
/// autoTransferAccount : "YL1800076"
/// enName : null
/// schoolId : 76
/// allergyFoods : null
/// avatar : {"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/91a8cb307a535be015870534f2a4e633bf8cfa8763b9a2e9d25780c08368a63fb4d13d67dfa1c7626ed66eed552978fe1da32e54b7fe278c65dcbeca7b3ef1e1.jpg","name":"24a0b1d29d99c7b5569f54556d013518_08bd9a2b6059252d0a3039ce719b033b5ab5b99f.jpg","__type":"File"}
/// parentRequirements : null
/// member : null
/// registrationForm : null
/// joinAt : "2023-12-15T16:00:00.000Z"
/// mongoDBId : "TojJ4Ut4ED"
/// birthday : null
/// referrerId : null
/// card : null
/// createdAt : "2023-12-15T02:02:51.293Z"
/// updatedAt : "2024-05-09T05:24:50.892Z"
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
      String? phone, 
      String? state, 
      String? displayName, 
      dynamic resultRecord, 
      num? schoolYearId, 
      String? balanceAccount, 
      dynamic allergyDrugs, 
      String? autoTransferAccount, 
      dynamic enName, 
      num? schoolId, 
      dynamic allergyFoods, 
      Avatar? avatar, 
      dynamic parentRequirements, 
      dynamic member, 
      dynamic registrationForm, 
      String? joinAt, 
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
    _avatar = json['avatar'] != null ? Avatar.fromJson(json['avatar']) : null;
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
  String? _phone;
  String? _state;
  String? _displayName;
  dynamic _resultRecord;
  num? _schoolYearId;
  String? _balanceAccount;
  dynamic _allergyDrugs;
  String? _autoTransferAccount;
  dynamic _enName;
  num? _schoolId;
  dynamic _allergyFoods;
  Avatar? _avatar;
  dynamic _parentRequirements;
  dynamic _member;
  dynamic _registrationForm;
  String? _joinAt;
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
  String? get phone => _phone;
  String? get state => _state;
  String? get displayName => _displayName;
  dynamic get resultRecord => _resultRecord;
  num? get schoolYearId => _schoolYearId;
  String? get balanceAccount => _balanceAccount;
  dynamic get allergyDrugs => _allergyDrugs;
  String? get autoTransferAccount => _autoTransferAccount;
  dynamic get enName => _enName;
  num? get schoolId => _schoolId;
  dynamic get allergyFoods => _allergyFoods;
  Avatar? get avatar => _avatar;
  dynamic get parentRequirements => _parentRequirements;
  dynamic get member => _member;
  dynamic get registrationForm => _registrationForm;
  String? get joinAt => _joinAt;
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
    if (_avatar != null) {
      map['avatar'] = _avatar?.toJson();
    }
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

/// url : "https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/91a8cb307a535be015870534f2a4e633bf8cfa8763b9a2e9d25780c08368a63fb4d13d67dfa1c7626ed66eed552978fe1da32e54b7fe278c65dcbeca7b3ef1e1.jpg"
/// name : "24a0b1d29d99c7b5569f54556d013518_08bd9a2b6059252d0a3039ce719b033b5ab5b99f.jpg"
/// __type : "File"

Avatar avatarFromJson(String str) => Avatar.fromJson(json.decode(str));
String avatarToJson(Avatar data) => json.encode(data.toJson());
class Avatar {
  Avatar({
      String? url, 
      String? name, 
      String? type,}){
    _url = url;
    _name = name;
    _type = type;
}

  Avatar.fromJson(dynamic json) {
    _url = json['url'];
    _name = json['name'];
    _type = json['__type'];
  }
  String? _url;
  String? _name;
  String? _type;

  String? get url => _url;
  String? get name => _name;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['name'] = _name;
    map['__type'] = _type;
    return map;
  }

}