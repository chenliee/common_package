import 'dart:convert';

import 'package:macauscholar/macauscholar.dart';

/// student : {"id":1,"gender":null,"branch":"B0000879","specialNeeds":null,"number":"YL010015","appetite":1,"favourites":[],"characters":[],"phone":null,"state":"active","displayName":"小李","resultRecord":null,"schoolYearId":5,"balanceAccount":null,"allergyDrugs":[],"autoTransferAccount":null,"enName":null,"schoolId":103,"allergyFoods":[],"avatar":null,"parentRequirements":[],"member":"7a2a88ad-4924-4dcb-8b18-c2e6d7661e1a","registrationForm":null,"joinAt":null,"mongoDBId":"04AmDHdE2o","birthday":null,"referrerId":null,"card":null,"createdAt":"2022-08-31T09:02:11.766Z","updatedAt":"2024-05-10T09:54:33.799Z","deletedAt":null,"school":{"id":103,"code":"S143","displayName":"中學回歸教育","order":96,"location":null,"mongoDBId":"lV8EY396zZ","createdAt":"2021-11-19T10:35:53.275Z","updatedAt":"2024-05-10T09:36:52.728Z","deletedAt":null},"schoolYear":{"id":5,"code":"cf1","type":"secondary","order":0,"displayName":"初一(中文部)","createdAt":"2021-11-19T10:35:53.799Z","updatedAt":"2024-05-10T09:37:31.286Z","deletedAt":null,"mongoDBId":"FeZONOpQYs"},"subscription":[]}
/// scholar : {"id":864,"oldObjectId":"04V2m4dRWP","displayName":"User","number":"S0000053","avatar":{"id":330,"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/scholar/S0000053/90fce7df775c57496d8ff10b5b091f22fefccf463d4169cd6e09e62efc55bbe7_143232a4-0fc9-47d2-be93-4e72fcfbf689.jpg","hash":"90fce7df775c57496d8ff10b5b091f22fefccf463d4169cd6e09e62efc55bbe7","mime":"image/jpeg","name":"143232a4-0fc9-47d2-be93-4e72fcfbf689.jpg","path":"90fce7df775c57496d8ff10b5b091f22fefccf463d4169cd6e09e62efc55bbe7_143232a4-0fc9-47d2-be93-4e72fcfbf689.jpg","size":"58641","token":"eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzMwLCJ1cmwiOiJodHRwczovL3N0b3JhZ2UuZGV2LmhleWRheS1jYXRlcmluZy5jb206MjA0NDMvc2Nob2xhci9jbXMvc2Nob2xhci9TMDAwMDA1My85MGZjZTdkZjc3NWM1NzQ5NmQ4ZmYxMGI1YjA5MWYyMmZlZmNjZjQ2M2Q0MTY5Y2Q2ZTA5ZTYyZWZjNTViYmU3XzE0MzIzMmE0LTBmYzktNDdkMi1iZTkzLTRlNzJmY2ZiZjY4OS5qcGciLCJtaW1lIjoiaW1hZ2UvanBlZyIsIm5hbWUiOiIxNDMyMzJhNC0wZmM5LTQ3ZDItYmU5My00ZTcyZmNmYmY2ODkuanBnIiwic2l6ZSI6IjU4NjQxIiwiaGFzaCI6IjkwZmNlN2RmNzc1YzU3NDk2ZDhmZjEwYjViMDkxZjIyZmVmY2NmNDYzZDQxNjljZDZlMDllNjJlZmM1NWJiZTciLCJwYXRoIjoiOTBmY2U3ZGY3NzVjNTc0OTZkOGZmMTBiNWIwOTFmMjJmZWZjY2Y0NjNkNDE2OWNkNmUwOWU2MmVmYzU1YmJlN18xNDMyMzJhNC0wZmM5LTQ3ZDItYmU5My00ZTcyZmNmYmY2ODkuanBnIiwiaWF0IjoxNzE5Mzg4NzUwfQ.mRsOq0ukgEEJNMXiCjSZNOAuHWjle9RikbJZdUjvciv-Qpo2AvJC4bqc0iz_3iAVVqbu0WgjF_W-Wd0YZmzMDLvXgCfCfFK0-4EtowSD2aSLMdH_BG7G0tOr94wCp3UfR0CP_WhB-7hM_aetBfBkfwTW0jobbqmmQp5rfF7lGNAyDfnE3I10AAGw4F2x8pE89HCC8WDrg6LyA1JWsHXbWI3wkJWBT7XJGPUqDBNdahe15IqGSWfRo6FwsgcRiHJkF-7K10gxl5SCYJZRpPnDGaqL30a6oAzll-hUpk4vaGXIAzpNSgRcmwGXNIrHKttvFLhuGQ0n5M4qbvRUOkARtw"},"gender":"f","phone":null,"birthday":null,"referrerId":null,"autoTransfer":null,"bindMember":"7a2a88ad-4924-4dcb-8b18-c2e6d7661e1a","oldMySQLID":null,"createdAt":"2024-06-24T03:16:53.387Z","updatedAt":"2024-06-26T07:59:12.975Z"}
/// parent : {"id":13,"displayName":"测试使用家长","phone":null,"idCopy":null,"branchs":null,"contacts":null,"address":null,"idNo":null,"member":"7a2a88ad-4924-4dcb-8b18-c2e6d7661e1a","job":null,"mongoDBId":"1gNgNd1Wmg","createdAt":"2022-08-31T07:48:17.973Z","updatedAt":"2024-05-09T05:39:06.142Z","deletedAt":null,"relation":[]}

IdentityModel identityModelFromJson(String str) =>
    IdentityModel.fromJson(json.decode(str));
String identityModelToJson(IdentityModel data) => json.encode(data.toJson());

class IdentityModel {
  IdentityModel({
    StudentItem? student,
    ScholarItem? scholar,
    ParentItem? parent,
  }) {
    _student = student;
    _scholar = scholar;
    _parent = parent;
  }

  IdentityModel.fromJson(dynamic json) {
    _student =
        json['student'] != null ? StudentItem.fromJson(json['student']) : null;
    _scholar =
        json['scholar'] != null ? ScholarItem.fromJson(json['scholar']) : null;
    _parent =
        json['parent'] != null ? ParentItem.fromJson(json['parent']) : null;
  }
  StudentItem? _student;
  ScholarItem? _scholar;
  ParentItem? _parent;
  IdentityModel copyWith({
    StudentItem? student,
    ScholarItem? scholar,
    ParentItem? parent,
  }) =>
      IdentityModel(
        student: student ?? _student,
        scholar: scholar ?? _scholar,
        parent: parent ?? _parent,
      );
  StudentItem? get student => _student;
  ScholarItem? get scholar => _scholar;
  ParentItem? get parent => _parent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_student != null) {
      map['student'] = _student?.toJson();
    }
    if (_scholar != null) {
      map['scholar'] = _scholar?.toJson();
    }
    if (_parent != null) {
      map['parent'] = _parent?.toJson();
    }
    return map;
  }
}
