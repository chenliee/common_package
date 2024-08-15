import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// scholars : [{"id":865,"oldObjectId":"0iOH06AEl1","displayName":"陳翠碧","number":"S0000092","avatar":null,"gender":"f","phone":"61234657","birthday":null,"referrerId":866,"autoTransfer":"","balanceAccount":"FA000061","bindMember":"S0000092","oldMySQLID":null,"createdAt":"2022-07-12T03:34:50.803Z","updatedAt":"2022-07-22T03:03:42.081Z","referrer":{"id":866,"oldObjectId":"0j7fTD0sRj","displayName":"张先生","number":"S0000049","avatar":null,"gender":"m","phone":null,"birthday":null,"referrerId":null,"autoTransfer":"","balanceAccount":"FA000029","bindMember":"S0000049","oldMySQLID":null,"createdAt":"2022-05-03T09:07:09.934Z","updatedAt":"2023-05-29T06:33:05.395Z"},"referrers":[],"userId":"029b72d5-c99a-48a1-8413-1f0def791e5b"},{"id":929,"oldObjectId":"SsERFspQqO","displayName":"6000","number":"S0000166","avatar":null,"gender":"f","phone":"61234587","birthday":null,"referrerId":null,"autoTransfer":null,"balanceAccount":null,"bindMember":"SS220005","oldMySQLID":null,"createdAt":"2022-10-21T09:22:45.467Z","updatedAt":"2022-11-17T03:04:17.954Z","referrer":null,"referrers":[],"userId":"dev231200100359"},{"id":1003,"oldObjectId":"uxFcrE0scS","displayName":"科比牢大","number":"S0000186","avatar":null,"gender":"m","phone":"68888888","birthday":null,"referrerId":null,"autoTransfer":null,"balanceAccount":null,"bindMember":"S0000186","oldMySQLID":null,"createdAt":"2023-12-19T05:38:28.863Z","updatedAt":"2023-12-19T05:38:28.863Z","referrer":null,"referrers":[],"userId":"84feb782-bb48-4374-80fa-493b7d38c58f"}]
/// students : [{"id":24,"gender":"f","branch":"B0000011","specialNeeds":null,"number":"SS220005","appetite":1,"favourites":[],"characters":[],"phone":"25635159","state":"active","displayName":"125","resultRecord":null,"schoolYearId":14,"balanceAccount":null,"allergyDrugs":[],"autoTransferAccount":null,"enName":null,"schoolId":55,"allergyFoods":[],"avatar":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/3cd5984812da9432f624ab760fb793465ec674650bb603f51d7c009247d9ec2096455a1c3fbb755fa67b56247c7727d7003df95d2b0c1abd966c6551b52c5a02.png","name":"454382f58acfd8f3534c3b872063e332_logo -儒林 (1).png","__type":"File"},"parentRequirements":[],"member":"SS220005","registrationForm":null,"joinAt":"2022-08-31T16:00:00.000Z","mongoDBId":"W02GasFZe8","birthday":null,"referrerId":null,"card":null,"createdAt":"2022-09-01T03:52:52.910Z","updatedAt":"2024-08-09T09:01:56.525Z","deletedAt":null,"school":{"id":55,"code":"S135","displayName":"中葡職業技術學校","order":89,"location":null,"mongoDBId":"PS8uG9pQBU","createdAt":"2021-11-19T10:35:53.122Z","updatedAt":"2024-05-10T09:36:25.799Z","deletedAt":null},"schoolYear":{"id":14,"code":"ef3","type":"secondary","order":15,"displayName":"初三(英文部)","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-07-23T06:15:36.888Z","deletedAt":null,"mongoDBId":"crGSl93z1a"},"subscription":[{"id":1,"remark":null,"branch":"B1000050","noDiscount":false,"servicesTable":[{"code":"TUIFEE00P1","label":"小一補習費","value":1860},{"code":"TUICHG0001","label":"清潔／影印雜費","value":140}],"price":2000,"realPrice":2000,"dateTo":"2023-05-26T15:59:59.999Z","dateFrom":null,"serviceId":517,"title":"小一補習費+清潔／影印雜費","studentId":24,"mongoDBId":"02exlMhXpe","authInfo":{"uid":"ZH1522","name":"張嘉濤"},"createdAt":"2023-05-27T06:49:01.503Z","updatedAt":"2024-06-04T01:12:09.958Z","deletedAt":null},{"id":4,"remark":null,"branch":"B1000050","noDiscount":false,"servicesTable":[{"code":"TUIMEAL200","value":280},{"code":"TUICHG0001","value":120},{"code":"TUIFEE00P6","value":2420}],"price":4000,"realPrice":3500,"dateTo":"2023-01-16T15:59:59.999Z","dateFrom":null,"serviceId":148,"title":"小六一條龍","studentId":24,"mongoDBId":"0SeXAfVBM8","authInfo":{"uid":"ZH1522","name":"張嘉濤"},"createdAt":"2023-01-17T09:47:29.550Z","updatedAt":"2024-06-04T01:12:11.332Z","deletedAt":null}],"employee":[{"id":9,"uid":"b90e4f43-c808-4747-bd81-969b7c06faec","rules":["employee"],"createdAt":"2024-08-08T11:06:07.367Z","updatedAt":"2024-08-11T06:06:54.799Z"}],"group":[{"id":18,"userId":9,"name":"测试","branch":"B0000011","description":null,"createdAt":"2024-08-09T12:56:13.556Z","updatedAt":"2024-08-09T12:56:13.556Z"}],"referrer":null,"userId":"dev231200100359"},{"id":6,"gender":"f","branch":"B0000879","specialNeeds":null,"number":"AA458","appetite":1,"favourites":["好"],"characters":["好 ","不安"],"phone":"66666666","state":"active","displayName":"458","resultRecord":null,"schoolYearId":1,"balanceAccount":"GG1522","allergyDrugs":["不会"],"autoTransferAccount":"GG1522","enName":"456","schoolId":44,"allergyFoods":["不会"],"avatar":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/macauscholar_dev/a701edfc3894133d27138431e4fce59794795bd7fc710a96e10915a4186106c44e2f5b0b5303bf758d0b6ff0d886b781b553de90134d9cc19df090c7d02a0762.png","name":"logo.png","__type":"File"},"parentRequirements":["好"],"member":"AA458","registrationForm":null,"joinAt":"2022-02-24T16:00:00.000Z","mongoDBId":"0DmJaiAPYf","birthday":null,"referrerId":null,"card":null,"createdAt":"2022-02-25T01:58:06.895Z","updatedAt":"2024-07-02T05:33:16.564Z","deletedAt":null,"school":{"id":44,"code":"S004","displayName":"海星中學","order":3,"location":null,"mongoDBId":"JKIP8pa0Ta","createdAt":"2021-11-19T10:35:52.616Z","updatedAt":"2024-05-10T09:36:25.099Z","deletedAt":null},"schoolYear":{"id":1,"code":"cf4","type":"college","order":16,"displayName":"高一(中文部)","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-07-23T06:19:54.657Z","deletedAt":null,"mongoDBId":"1WsVhBv7sy"},"subscription":[],"employee":[],"group":[],"referrer":null,"userId":"8a3bf1da-84b5-46ad-bd3b-bfd81c3b5494"}]

RelationModel relationModelFromJson(String str) =>
    RelationModel.fromJson(json.decode(str));
String relationModelToJson(RelationModel data) => json.encode(data.toJson());

class RelationModel {
  RelationModel({
    List<ScholarItem>? scholars,
    List<StudentItem>? students,
  }) {
    _scholars = scholars;
    _students = students;
  }

  RelationModel.fromJson(dynamic json) {
    if (json['scholars'] != null) {
      _scholars = [];
      json['scholars'].forEach((v) {
        _scholars?.add(ScholarItem.fromJson(v));
      });
    }
    if (json['students'] != null) {
      _students = [];
      json['students'].forEach((v) {
        _students?.add(StudentItem.fromJson(v));
      });
    }
  }
  List<ScholarItem>? _scholars;
  List<StudentItem>? _students;
  RelationModel copyWith({
    List<ScholarItem>? scholars,
    List<StudentItem>? students,
  }) =>
      RelationModel(
        scholars: scholars ?? _scholars,
        students: students ?? _students,
      );
  List<ScholarItem>? get scholars => _scholars;
  List<StudentItem>? get students => _students;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_scholars != null) {
      map['scholars'] = _scholars?.map((v) => v.toJson()).toList();
    }
    if (_students != null) {
      map['students'] = _students?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
