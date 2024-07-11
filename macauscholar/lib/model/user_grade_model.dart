import 'dart:convert';

import 'package:marketing/model/activity_item.dart';
import 'package:member/member.dart';

/// user : {"user":{"id":245,"sn":"7a2a88ad-4924-4d45-8b18-c2e6d2221eds","userId":"dev231200100359","merchantId":1,"username":"你的名字","sex":null,"avatarFileId":null,"email":null,"birthday":null,"habbit":null,"rules":["member"],"type":null,"createdAt":"2024-01-19T07:39:36.167Z","updatedAt":"2024-07-01T01:49:51.991Z","deletedAt":null,"Contact":[]},"grade":{"id":322,"projectId":1,"userId":245,"gradeId":12,"record":{},"createdAt":"2024-07-03T08:15:05.743Z","updatedAt":"2024-07-03T08:15:05.743Z","grade":{"id":12,"gradeId":"17412662-466d-4e41-bca9-073f31d4beac","gradeType":"member","order":0,"projectId":1,"gradeName":"儒林學院","privileges":{"discount":9,"discount_desc":"9"},"description":"儒林会员","guideTitle":"儒林会员","upgradeCondition":{"total_consumption":0},"imgFileId":281,"isDelete":0,"config":{"background":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7790a9454cf3d7b9c6b8d30a2bc1f24b94ed70ba645834054b512a6f342230e8_upload_1719992256151.0.1117757763977767.0.png"},"createdAt":"2024-06-01T07:19:34.563Z","updatedAt":"2024-07-03T07:37:36.886Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7f94cf8fe96d7ae63519209a2e23cf4dbf778df6e01be85762c5dc7e8a21494c_upload_1717380523046.0.8199779801350608.0.png"},"nextGrade":{"id":13,"gradeId":"37e939ae-38d3-4f00-858d-f54cf49f6fe2","gradeType":"member","order":1,"projectId":1,"gradeName":"学习标兵","privileges":{"discount":9,"discount_desc":"9"},"description":"学习标兵","guideTitle":"学习标兵","upgradeCondition":{"total_consumption":200000},"imgFileId":279,"isDelete":0,"config":{},"createdAt":"2024-06-01T07:20:01.832Z","updatedAt":"2024-06-01T07:20:20.449Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/5e959c3372b007fe0dd69fd136091a822af4e1d6e658e9f477edf4d07450874e_upload_1717226352290.0.6004900671689986.0.png"},"grades":[{"id":12,"gradeId":"17412662-466d-4e41-bca9-073f31d4beac","gradeType":"member","order":0,"projectId":1,"gradeName":"儒林學院","privileges":{"discount":9,"discount_desc":"9"},"description":"儒林会员","guideTitle":"儒林会员","upgradeCondition":{"total_consumption":0},"imgFileId":281,"isDelete":0,"config":{"background":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7790a9454cf3d7b9c6b8d30a2bc1f24b94ed70ba645834054b512a6f342230e8_upload_1719992256151.0.1117757763977767.0.png"},"createdAt":"2024-06-01T07:19:34.563Z","updatedAt":"2024-07-03T07:37:36.886Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7f94cf8fe96d7ae63519209a2e23cf4dbf778df6e01be85762c5dc7e8a21494c_upload_1717380523046.0.8199779801350608.0.png"},{"id":13,"gradeId":"37e939ae-38d3-4f00-858d-f54cf49f6fe2","gradeType":"member","order":1,"projectId":1,"gradeName":"学习标兵","privileges":{"discount":9,"discount_desc":"9"},"description":"学习标兵","guideTitle":"学习标兵","upgradeCondition":{"total_consumption":200000},"imgFileId":279,"isDelete":0,"config":{},"createdAt":"2024-06-01T07:20:01.832Z","updatedAt":"2024-06-01T07:20:20.449Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/5e959c3372b007fe0dd69fd136091a822af4e1d6e658e9f477edf4d07450874e_upload_1717226352290.0.6004900671689986.0.png"}]}}
/// activity : {"total":3,"list":[{"id":758,"merchantId":1,"name":"購買儒林舉辦活動入場券","type":"memberEquity","targetType":null,"targetId":null,"code":"940ec95f-b656-42fb-ada3-ff6dbe1b29d9","status":"processed","description":"98折","detail":"購買儒林舉辦活動入場券","startAt":null,"settledAt":null,"expiredAt":null,"custom":{"sort":2,"grade":"37e939ae-38d3-4f00-858d-f54cf49f6fe2"},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-07-03T07:31:33.647Z","updatedAt":"2024-07-03T07:58:11.097Z","ref":null,"children":[],"files":{"activity":{"title":"進行中","multiple":false,"desc":null,"value":{"id":49,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/2e6b4df726dec108e6703c6e17c025f414f0c0edf9ccbca03b3b1ae8196666e5_Group%20682@2x.png","mime":"image/png","name":"Group 682@2x.png","size":"11572","hash":"2e6b4df726dec108e6703c6e17c025f414f0c0edf9ccbca03b3b1ae8196666e5"}},"peding":{"title":"等待開始","multiple":false,"desc":null,"value":{"id":47,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/966aea284e828f782d9cc0993c463d0684ba309f54cadd8bc95cf52cecdd02b8_Group%20682@2x.png","mime":"image/png","name":"Group 682@2x.png","size":"12836","hash":"966aea284e828f782d9cc0993c463d0684ba309f54cadd8bc95cf52cecdd02b8"}}}},{"id":757,"merchantId":1,"name":"生日禮","type":"memberEquity","targetType":null,"targetId":null,"code":"0394f9aa-40fa-4c52-8a9f-fe6a60ce94a0","status":"processed","description":"課程體驗券","detail":"課程體驗券","startAt":null,"settledAt":null,"expiredAt":null,"custom":{"sort":1,"grade":"37e939ae-38d3-4f00-858d-f54cf49f6fe2"},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-07-03T07:31:24.450Z","updatedAt":"2024-07-03T07:58:11.100Z","ref":null,"children":[],"files":{"activity":{"title":"進行中","multiple":false,"desc":null,"value":{"id":50,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/908078e2ea74b7b94233f409168fd49cbd21fd65ee7b02625c76843b7c1f95af_%E7%94%9F%E6%97%A5%E7%A4%BC@2x.png","mime":"image/png","name":"生日礼@2x.png","size":"11191","hash":"908078e2ea74b7b94233f409168fd49cbd21fd65ee7b02625c76843b7c1f95af"}},"peding":{"title":"等待開始","multiple":false,"desc":null,"value":{"id":48,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/148be1e05b856efd3b55fd698dda42717e688309bc8436c72999e58cd2a26313_%E7%94%9F%E6%97%A5%E7%A4%BC@2x.png","mime":"image/png","name":"生日礼@2x.png","size":"11610","hash":"148be1e05b856efd3b55fd698dda42717e688309bc8436c72999e58cd2a26313"}}}},{"id":756,"merchantId":1,"name":"儒林商城折扣","type":"memberEquity","targetType":null,"targetId":null,"code":"6370e1d3-1a23-4e68-ae06-3af5429f0840","status":"processed","description":"98折","detail":"98折","startAt":null,"settledAt":null,"expiredAt":null,"custom":{"sort":0,"grade":"17412662-466d-4e41-bca9-073f31d4beac"},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-07-03T07:26:26.397Z","updatedAt":"2024-07-03T08:12:58.850Z","ref":null,"children":[],"files":{"activity":{"title":"進行中","multiple":false,"desc":null,"value":{"id":51,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/c7851f9410d4cbb46fb0ae58a40fdbf121c66e634468b488d7dba53066b1b027_Group%20575@2x.png","mime":"image/png","name":"Group 575@2x.png","size":"11171","hash":"c7851f9410d4cbb46fb0ae58a40fdbf121c66e634468b488d7dba53066b1b027"}},"peding":{"title":"等待開始","multiple":false,"desc":null,"value":{"id":52,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/c47a7abf85229022d3345aa015e8fb0941bd6e1f6e926b2eb61b406aee45a379_Group%20575@2x.png","mime":"image/png","name":"Group 575@2x.png","size":"12184","hash":"c47a7abf85229022d3345aa015e8fb0941bd6e1f6e926b2eb61b406aee45a379"}}}}]}

UserGradeModel userGradeModelFromJson(String str) =>
    UserGradeModel.fromJson(json.decode(str));
String userGradeModelToJson(UserGradeModel data) => json.encode(data.toJson());

class UserGradeModel {
  UserGradeModel({
    User? user,
    Activity? activity,
  }) {
    _user = user;
    _activity = activity;
  }

  UserGradeModel.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _activity =
        json['activity'] != null ? Activity.fromJson(json['activity']) : null;
  }
  User? _user;
  Activity? _activity;
  UserGradeModel copyWith({
    User? user,
    Activity? activity,
  }) =>
      UserGradeModel(
        user: user ?? _user,
        activity: activity ?? _activity,
      );
  User? get user => _user;
  Activity? get activity => _activity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_activity != null) {
      map['activity'] = _activity?.toJson();
    }
    return map;
  }
}

/// total : 3
/// list : [{"id":758,"merchantId":1,"name":"購買儒林舉辦活動入場券","type":"memberEquity","targetType":null,"targetId":null,"code":"940ec95f-b656-42fb-ada3-ff6dbe1b29d9","status":"processed","description":"98折","detail":"購買儒林舉辦活動入場券","startAt":null,"settledAt":null,"expiredAt":null,"custom":{"sort":2,"grade":"37e939ae-38d3-4f00-858d-f54cf49f6fe2"},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-07-03T07:31:33.647Z","updatedAt":"2024-07-03T07:58:11.097Z","ref":null,"children":[],"files":{"activity":{"title":"進行中","multiple":false,"desc":null,"value":{"id":49,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/2e6b4df726dec108e6703c6e17c025f414f0c0edf9ccbca03b3b1ae8196666e5_Group%20682@2x.png","mime":"image/png","name":"Group 682@2x.png","size":"11572","hash":"2e6b4df726dec108e6703c6e17c025f414f0c0edf9ccbca03b3b1ae8196666e5"}},"peding":{"title":"等待開始","multiple":false,"desc":null,"value":{"id":47,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/966aea284e828f782d9cc0993c463d0684ba309f54cadd8bc95cf52cecdd02b8_Group%20682@2x.png","mime":"image/png","name":"Group 682@2x.png","size":"12836","hash":"966aea284e828f782d9cc0993c463d0684ba309f54cadd8bc95cf52cecdd02b8"}}}},{"id":757,"merchantId":1,"name":"生日禮","type":"memberEquity","targetType":null,"targetId":null,"code":"0394f9aa-40fa-4c52-8a9f-fe6a60ce94a0","status":"processed","description":"課程體驗券","detail":"課程體驗券","startAt":null,"settledAt":null,"expiredAt":null,"custom":{"sort":1,"grade":"37e939ae-38d3-4f00-858d-f54cf49f6fe2"},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-07-03T07:31:24.450Z","updatedAt":"2024-07-03T07:58:11.100Z","ref":null,"children":[],"files":{"activity":{"title":"進行中","multiple":false,"desc":null,"value":{"id":50,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/908078e2ea74b7b94233f409168fd49cbd21fd65ee7b02625c76843b7c1f95af_%E7%94%9F%E6%97%A5%E7%A4%BC@2x.png","mime":"image/png","name":"生日礼@2x.png","size":"11191","hash":"908078e2ea74b7b94233f409168fd49cbd21fd65ee7b02625c76843b7c1f95af"}},"peding":{"title":"等待開始","multiple":false,"desc":null,"value":{"id":48,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/148be1e05b856efd3b55fd698dda42717e688309bc8436c72999e58cd2a26313_%E7%94%9F%E6%97%A5%E7%A4%BC@2x.png","mime":"image/png","name":"生日礼@2x.png","size":"11610","hash":"148be1e05b856efd3b55fd698dda42717e688309bc8436c72999e58cd2a26313"}}}},{"id":756,"merchantId":1,"name":"儒林商城折扣","type":"memberEquity","targetType":null,"targetId":null,"code":"6370e1d3-1a23-4e68-ae06-3af5429f0840","status":"processed","description":"98折","detail":"98折","startAt":null,"settledAt":null,"expiredAt":null,"custom":{"sort":0,"grade":"17412662-466d-4e41-bca9-073f31d4beac"},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-07-03T07:26:26.397Z","updatedAt":"2024-07-03T08:12:58.850Z","ref":null,"children":[],"files":{"activity":{"title":"進行中","multiple":false,"desc":null,"value":{"id":51,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/c7851f9410d4cbb46fb0ae58a40fdbf121c66e634468b488d7dba53066b1b027_Group%20575@2x.png","mime":"image/png","name":"Group 575@2x.png","size":"11171","hash":"c7851f9410d4cbb46fb0ae58a40fdbf121c66e634468b488d7dba53066b1b027"}},"peding":{"title":"等待開始","multiple":false,"desc":null,"value":{"id":52,"url":"https://storage.dev.heyday-catering.com:20443/saas-marketing/public/c47a7abf85229022d3345aa015e8fb0941bd6e1f6e926b2eb61b406aee45a379_Group%20575@2x.png","mime":"image/png","name":"Group 575@2x.png","size":"12184","hash":"c47a7abf85229022d3345aa015e8fb0941bd6e1f6e926b2eb61b406aee45a379"}}}}]

Activity activityFromJson(String str) => Activity.fromJson(json.decode(str));
String activityToJson(Activity data) => json.encode(data.toJson());

class Activity {
  Activity({
    num? total,
    List<ActivityItem>? list,
  }) {
    _total = total;
    _list = list;
  }

  Activity.fromJson(dynamic json) {
    _total = json['total'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(ActivityItem.fromJson(v));
      });
    }
  }
  num? _total;
  List<ActivityItem>? _list;
  Activity copyWith({
    num? total,
    List<ActivityItem>? list,
  }) =>
      Activity(
        total: total ?? _total,
        list: list ?? _list,
      );
  num? get total => _total;
  List<ActivityItem>? get list => _list;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = _total;
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// user : {"id":245,"sn":"7a2a88ad-4924-4d45-8b18-c2e6d2221eds","userId":"dev231200100359","merchantId":1,"username":"你的名字","sex":null,"avatarFileId":null,"email":null,"birthday":null,"habbit":null,"rules":["member"],"type":null,"createdAt":"2024-01-19T07:39:36.167Z","updatedAt":"2024-07-01T01:49:51.991Z","deletedAt":null,"Contact":[]}
/// grade : {"id":322,"projectId":1,"userId":245,"gradeId":12,"record":{},"createdAt":"2024-07-03T08:15:05.743Z","updatedAt":"2024-07-03T08:15:05.743Z","grade":{"id":12,"gradeId":"17412662-466d-4e41-bca9-073f31d4beac","gradeType":"member","order":0,"projectId":1,"gradeName":"儒林學院","privileges":{"discount":9,"discount_desc":"9"},"description":"儒林会员","guideTitle":"儒林会员","upgradeCondition":{"total_consumption":0},"imgFileId":281,"isDelete":0,"config":{"background":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7790a9454cf3d7b9c6b8d30a2bc1f24b94ed70ba645834054b512a6f342230e8_upload_1719992256151.0.1117757763977767.0.png"},"createdAt":"2024-06-01T07:19:34.563Z","updatedAt":"2024-07-03T07:37:36.886Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7f94cf8fe96d7ae63519209a2e23cf4dbf778df6e01be85762c5dc7e8a21494c_upload_1717380523046.0.8199779801350608.0.png"},"nextGrade":{"id":13,"gradeId":"37e939ae-38d3-4f00-858d-f54cf49f6fe2","gradeType":"member","order":1,"projectId":1,"gradeName":"学习标兵","privileges":{"discount":9,"discount_desc":"9"},"description":"学习标兵","guideTitle":"学习标兵","upgradeCondition":{"total_consumption":200000},"imgFileId":279,"isDelete":0,"config":{},"createdAt":"2024-06-01T07:20:01.832Z","updatedAt":"2024-06-01T07:20:20.449Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/5e959c3372b007fe0dd69fd136091a822af4e1d6e658e9f477edf4d07450874e_upload_1717226352290.0.6004900671689986.0.png"},"grades":[{"id":12,"gradeId":"17412662-466d-4e41-bca9-073f31d4beac","gradeType":"member","order":0,"projectId":1,"gradeName":"儒林學院","privileges":{"discount":9,"discount_desc":"9"},"description":"儒林会员","guideTitle":"儒林会员","upgradeCondition":{"total_consumption":0},"imgFileId":281,"isDelete":0,"config":{"background":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7790a9454cf3d7b9c6b8d30a2bc1f24b94ed70ba645834054b512a6f342230e8_upload_1719992256151.0.1117757763977767.0.png"},"createdAt":"2024-06-01T07:19:34.563Z","updatedAt":"2024-07-03T07:37:36.886Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/7f94cf8fe96d7ae63519209a2e23cf4dbf778df6e01be85762c5dc7e8a21494c_upload_1717380523046.0.8199779801350608.0.png"},{"id":13,"gradeId":"37e939ae-38d3-4f00-858d-f54cf49f6fe2","gradeType":"member","order":1,"projectId":1,"gradeName":"学习标兵","privileges":{"discount":9,"discount_desc":"9"},"description":"学习标兵","guideTitle":"学习标兵","upgradeCondition":{"total_consumption":200000},"imgFileId":279,"isDelete":0,"config":{},"createdAt":"2024-06-01T07:20:01.832Z","updatedAt":"2024-06-01T07:20:20.449Z","coverImg":"https://storage.dev.heyday-catering.com:20443/saas-member/public/5e959c3372b007fe0dd69fd136091a822af4e1d6e658e9f477edf4d07450874e_upload_1717226352290.0.6004900671689986.0.png"}]}

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    UserInfo? user,
    UserGradeInfo? grade,
  }) {
    _user = user;
    _grade = grade;
  }

  User.fromJson(dynamic json) {
    _user = json['user'] != null ? UserInfo.fromJson(json['user']) : null;
    _grade =
        json['grade'] != null ? UserGradeInfo.fromJson(json['grade']) : null;
  }
  UserInfo? _user;
  UserGradeInfo? _grade;
  User copyWith({
    UserInfo? user,
    UserGradeInfo? grade,
  }) =>
      User(
        user: user ?? _user,
        grade: grade ?? _grade,
      );
  UserInfo? get user => _user;
  UserGradeInfo? get grade => _grade;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_grade != null) {
      map['grade'] = _grade?.toJson();
    }
    return map;
  }
}
