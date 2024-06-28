import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// id : 5
/// title : "611测试套餐"
/// code : "1718092347780"
/// version : null
/// appNotShow : false
/// withBranches : ["s"]
/// withoutBranches : ["s"]
/// dateTo : "2024-07-01T00:00:00.000Z"
/// dateFrom : "2024-06-01T00:00:00.000Z"
/// mongoDBId : null
/// order : 0
/// createdAt : "2024-06-11T07:52:27.757Z"
/// updatedAt : "2024-06-11T07:52:27.757Z"
/// deletedAt : null
/// withoutSchools : ["s"]
/// withSchools : ["s"]
/// withoutSchoolYears : ["s"]
/// withSchoolYears : ["s"]
/// services : [{"id":685,"title":"K3補習費+下午茶","packageId":5,"price":2080,"common":false,"code":"1718092347780:TUIFEE00K3+TUIMEAL200","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K3","label":"K3補習費","value":1800},{"code":"TUIMEAL200","label":"下午茶","value":280}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2024-06-13T02:25:07.975Z","updatedAt":"2024-06-13T02:25:07.975Z","deletedAt":null,"mongoDBId":null,"bindServices":[{"id":590,"title":"K3補習費","packageId":null,"price":1800,"common":false,"code":"TUIFEE00K3","categoryId":17,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K3","value":1800}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:40:50.394Z","deletedAt":null,"mongoDBId":"qge6V53arf"},{"id":659,"title":"下午茶","packageId":null,"price":280,"common":false,"code":"TUIMEAL200","categoryId":16,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIMEAL200","value":280}],"withBranches":null,"withoutBranches":["51","B0000011"],"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-24T07:08:00.159Z","deletedAt":null,"mongoDBId":"xj7m00rXGs"}]},{"id":686,"title":"0125+下午茶","packageId":5,"price":281,"common":false,"code":"1718092347780:1wEKrwZuv5:00100+TUIMEAL200","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[{"code":"1wEKrwZuv5:00100","label":"0125","value":1},{"code":"TUIMEAL200","label":"下午茶","value":280}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2024-06-13T09:02:39.981Z","updatedAt":"2024-06-13T09:02:39.981Z","deletedAt":null,"mongoDBId":null,"bindServices":[{"id":611,"title":"0125","packageId":null,"price":1,"common":false,"code":"1wEKrwZuv5:00100","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2022-10-13T10:05:19.089Z","updatedAt":"2024-06-04T02:41:34.540Z","deletedAt":null,"mongoDBId":"tH3xM2qLZ0"},{"id":659,"title":"下午茶","packageId":null,"price":280,"common":false,"code":"TUIMEAL200","categoryId":16,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIMEAL200","value":280}],"withBranches":null,"withoutBranches":["51","B0000011"],"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-24T07:08:00.159Z","deletedAt":null,"mongoDBId":"xj7m00rXGs"}]},{"id":687,"title":"K2補習費+小二補習費","packageId":5,"price":3680,"common":false,"code":"1718092347780:TUIFEE00K2+TUIFEE00P2","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P2","label":"小二補習費","value":1960},{"code":"TUIFEE00K2","label":"K2補習費","value":1720}],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2024-06-13T09:02:47.489Z","updatedAt":"2024-06-13T09:02:47.489Z","deletedAt":null,"mongoDBId":null,"bindServices":[{"id":624,"title":"K2補習費","packageId":null,"price":1720,"common":false,"code":"TUIFEE00K2","categoryId":17,"order":1,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K2","value":1720}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:41:55.380Z","deletedAt":null,"mongoDBId":"ucZtViNUuE"},{"id":653,"title":"小二補習費","packageId":null,"price":1960,"common":false,"code":"TUIFEE00P2","categoryId":19,"order":4,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P2","value":1960}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":{"id":["78QyUXUPE9"],"code":["p2_tuition"]},"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:42:53.707Z","deletedAt":null,"mongoDBId":"xFnCIfUe74"}]}]
/// sections : [{"id":15,"packageId":5,"title":"测试1","acceptEmpty":false,"multiple":false,"mongoDBId":null,"order":0,"createdAt":"2024-06-12T03:41:04.121Z","updatedAt":"2024-06-15T08:33:23.112Z","deletedAt":null,"service":[{"id":590,"title":"K3補習費","packageId":null,"price":1800,"common":false,"code":"TUIFEE00K3","categoryId":17,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K3","value":1800}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:40:50.394Z","deletedAt":null,"mongoDBId":"qge6V53arf"},{"id":611,"title":"0125","packageId":null,"price":1,"common":false,"code":"1wEKrwZuv5:00100","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2022-10-13T10:05:19.089Z","updatedAt":"2024-06-04T02:41:34.540Z","deletedAt":null,"mongoDBId":"tH3xM2qLZ0"},{"id":624,"title":"K2補習費","packageId":null,"price":1720,"common":false,"code":"TUIFEE00K2","categoryId":17,"order":1,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00K2","value":1720}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:41:55.380Z","deletedAt":null,"mongoDBId":"ucZtViNUuE"}]},{"id":16,"packageId":5,"title":"测试2","acceptEmpty":false,"multiple":false,"mongoDBId":null,"order":0,"createdAt":"2024-06-12T03:41:17.744Z","updatedAt":"2024-06-19T05:44:17.778Z","deletedAt":null,"service":[{"id":647,"title":"測試膳食費","packageId":null,"price":50,"common":false,"code":"aHO1Sq6wke:00003","categoryId":null,"order":0,"detailLog":null,"description":null,"servicesTable":[],"withBranches":null,"withoutBranches":null,"tags":null,"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2022-10-14T06:52:19.517Z","updatedAt":"2024-06-04T02:42:42.976Z","deletedAt":null,"mongoDBId":"wzj738NVSG"},{"id":653,"title":"小二補習費","packageId":null,"price":1960,"common":false,"code":"TUIFEE00P2","categoryId":19,"order":4,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIFEE00P2","value":1960}],"withBranches":null,"withoutBranches":null,"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":{"id":["78QyUXUPE9"],"code":["p2_tuition"]},"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-04T02:42:53.707Z","deletedAt":null,"mongoDBId":"xFnCIfUe74"},{"id":659,"title":"下午茶","packageId":null,"price":280,"common":false,"code":"TUIMEAL200","categoryId":16,"order":2,"detailLog":null,"description":null,"servicesTable":[{"code":"TUIMEAL200","value":280}],"withBranches":null,"withoutBranches":["51","B0000011"],"tags":[],"color":null,"licence":null,"images":null,"appShow":false,"userEndNotDisplay":false,"permit":null,"noDiscount":false,"recordIdCode":null,"cover":null,"createdAt":"2021-11-19T10:35:55.221Z","updatedAt":"2024-06-24T07:08:00.159Z","deletedAt":null,"mongoDBId":"xj7m00rXGs"}]}]

PackageItem packageItemFromJson(String str) =>
    PackageItem.fromJson(json.decode(str));
String packageItemToJson(PackageItem data) => json.encode(data.toJson());

class PackageItem {
  PackageItem({
    num? id,
    String? title,
    String? code,
    dynamic version,
    bool? appNotShow,
    List<String>? withBranches,
    List<String>? withoutBranches,
    String? dateTo,
    String? dateFrom,
    dynamic mongoDBId,
    num? order,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<SchoolItem>? withoutSchools,
    List<SchoolItem>? withSchools,
    List<SchoolYearItem>? withoutSchoolYears,
    List<SchoolYearItem>? withSchoolYears,
    List<ServiceItem>? services,
    List<SectionItem>? sections,
  }) {
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
    _withoutSchools = withoutSchools;
    _withSchools = withSchools;
    _withoutSchoolYears = withoutSchoolYears;
    _withSchoolYears = withSchoolYears;
    _services = services;
    _sections = sections;
  }

  PackageItem.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _code = json['code'];
    _version = json['version'];
    _appNotShow = json['appNotShow'];
    _withBranches =
        json['withBranches'] != null ? json['withBranches'].cast<String>() : [];
    _withoutBranches = json['withoutBranches'] != null
        ? json['withoutBranches'].cast<String>()
        : [];
    _dateTo = json['dateTo'];
    _dateFrom = json['dateFrom'];
    _mongoDBId = json['mongoDBId'];
    _order = json['order'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _deletedAt = json['deletedAt'];

    if (json['withoutSchools'] != null) {
      _withoutSchools = [];
      json['withoutSchools'].forEach((v) {
        _withoutSchools?.add(SchoolItem.fromJson(v));
      });
    }
    if (json['withSchools'] != null) {
      _withSchools = [];
      json['withSchools'].forEach((v) {
        _withSchools?.add(SchoolItem.fromJson(v));
      });
    }
    if (json['withoutSchoolYears'] != null) {
      _withoutSchoolYears = [];
      json['withoutSchoolYears'].forEach((v) {
        _withoutSchoolYears?.add(SchoolYearItem.fromJson(v));
      });
    }
    if (json['withSchoolYears'] != null) {
      _withSchoolYears = [];
      json['withSchoolYears'].forEach((v) {
        _withSchoolYears?.add(SchoolYearItem.fromJson(v));
      });
    }

    if (json['services'] != null) {
      _services = [];
      json['services'].forEach((v) {
        _services?.add(ServiceItem.fromJson(v));
      });
    }
    if (json['sections'] != null) {
      _sections = [];
      json['sections'].forEach((v) {
        _sections?.add(SectionItem.fromJson(v));
      });
    }
  }
  num? _id;
  String? _title;
  String? _code;
  dynamic _version;
  bool? _appNotShow;
  List<String>? _withBranches;
  List<String>? _withoutBranches;
  String? _dateTo;
  String? _dateFrom;
  dynamic _mongoDBId;
  num? _order;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  List<SchoolItem>? _withoutSchools;
  List<SchoolItem>? _withSchools;
  List<SchoolYearItem>? _withoutSchoolYears;
  List<SchoolYearItem>? _withSchoolYears;
  List<ServiceItem>? _services;
  List<SectionItem>? _sections;
  PackageItem copyWith({
    num? id,
    String? title,
    String? code,
    dynamic version,
    bool? appNotShow,
    List<String>? withBranches,
    List<String>? withoutBranches,
    String? dateTo,
    String? dateFrom,
    dynamic mongoDBId,
    num? order,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    List<SchoolItem>? withoutSchools,
    List<SchoolItem>? withSchools,
    List<SchoolYearItem>? withoutSchoolYears,
    List<SchoolYearItem>? withSchoolYears,
    List<ServiceItem>? services,
    List<SectionItem>? sections,
  }) =>
      PackageItem(
        id: id ?? _id,
        title: title ?? _title,
        code: code ?? _code,
        version: version ?? _version,
        appNotShow: appNotShow ?? _appNotShow,
        withBranches: withBranches ?? _withBranches,
        withoutBranches: withoutBranches ?? _withoutBranches,
        dateTo: dateTo ?? _dateTo,
        dateFrom: dateFrom ?? _dateFrom,
        mongoDBId: mongoDBId ?? _mongoDBId,
        order: order ?? _order,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        deletedAt: deletedAt ?? _deletedAt,
        withoutSchools: withoutSchools ?? _withoutSchools,
        withSchools: withSchools ?? _withSchools,
        withoutSchoolYears: withoutSchoolYears ?? _withoutSchoolYears,
        withSchoolYears: withSchoolYears ?? _withSchoolYears,
        services: services ?? _services,
        sections: sections ?? _sections,
      );
  num? get id => _id;
  String? get title => _title;
  String? get code => _code;
  dynamic get version => _version;
  bool? get appNotShow => _appNotShow;
  List<String>? get withBranches => _withBranches;
  List<String>? get withoutBranches => _withoutBranches;
  String? get dateTo => _dateTo;
  String? get dateFrom => _dateFrom;
  dynamic get mongoDBId => _mongoDBId;
  num? get order => _order;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  List<SchoolItem>? get withoutSchools => _withoutSchools;
  List<SchoolItem>? get withSchools => _withSchools;
  List<SchoolYearItem>? get withoutSchoolYears => _withoutSchoolYears;
  List<SchoolYearItem>? get withSchoolYears => _withSchoolYears;
  List<ServiceItem>? get services => _services;
  List<SectionItem>? get sections => _sections;

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
    map['withoutSchools'] = _withoutSchools;
    map['withSchools'] = _withSchools;
    map['withoutSchoolYears'] = _withoutSchoolYears;
    map['withSchoolYears'] = _withSchoolYears;
    if (_services != null) {
      map['services'] = _services?.map((v) => v.toJson()).toList();
    }
    if (_sections != null) {
      map['sections'] = _sections?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
