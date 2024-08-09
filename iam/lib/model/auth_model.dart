import 'dart:convert';
/// uid : "f4061f30-809f-4bc4-a468-7c45d4f59d47"
/// mid : "scholar"
/// rules : ["employee"]
/// provider : {"code":"wxwork","uid":"ZH1577","driver":"wxwork"}
/// device : null
/// token : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InBhc3Nwb3J0X2p3dCJ9.eyJ1aWQiOiJmNDA2MWYzMC04MDlmLTRiYzQtYTQ2OC03YzQ1ZDRmNTlkNDciLCJtaWQiOiJzY2hvbGFyIiwicnVsZXMiOlsiZW1wbG95ZWUiXSwicHJvdmlkZXIiOnsiY29kZSI6Ind4d29yayIsInVpZCI6IlpIMTU3NyIsImRyaXZlciI6Ind4d29yayJ9LCJkZXZpY2UiOm51bGwsImlhdCI6MTcyMzE5MzA5MSwiZXhwIjoxNzIzNzk3ODkxLCJpc3MiOiJzY2hvbGFyIiwic3ViIjoidXNlci5kZXYyNDA3MDAxMDA1MzIifQ.hZxGbCFVt-2H_CcfUjJXY6K-2HPFo-F_NeLJ8NSD7O7ciL2xwIPw_asc4IYbpqgW9dqssoqC_sRiNZAVcIneQJJBSx1XrXtF2nbr3a6gjrgfWADrWm4KYqfi6GuJiq63c87gOrm-DwqvxbN3vmbNtZb77-ulH0JwhMVzKy5FwkZgt3RdD-mKD0ZCFckdmfTExdl7w_vMX3OG9DjCDYoXUioeiQfN7ye1FwFrmmHhHi0vmkOelIWDAgshhz2B_pXNC6XwpGxmoHZ_rbk4CtSzamEbMabkLb3I96HxQIvO-ENY2xPHUHGtuNSOa0mb8vQs-CW6XfXAuUwjkfbvKwwpMQ"

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));
String authModelToJson(AuthModel data) => json.encode(data.toJson());
class AuthModel {
  AuthModel({
      String? uid, 
      String? mid, 
      List<String>? rules, 
      Provider? provider, 
      dynamic device, 
      String? token,}){
    _uid = uid;
    _mid = mid;
    _rules = rules;
    _provider = provider;
    _device = device;
    _token = token;
}

  AuthModel.fromJson(dynamic json) {
    _uid = json['uid'];
    _mid = json['mid'];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    _provider = json['provider'] != null ? Provider.fromJson(json['provider']) : null;
    _device = json['device'];
    _token = json['token'];
  }
  String? _uid;
  String? _mid;
  List<String>? _rules;
  Provider? _provider;
  dynamic _device;
  String? _token;

  String? get uid => _uid;
  String? get mid => _mid;
  List<String>? get rules => _rules;
  Provider? get provider => _provider;
  dynamic get device => _device;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uid'] = _uid;
    map['mid'] = _mid;
    map['rules'] = _rules;
    if (_provider != null) {
      map['provider'] = _provider?.toJson();
    }
    map['device'] = _device;
    map['token'] = _token;
    return map;
  }

}

/// code : "wxwork"
/// uid : "ZH1577"
/// driver : "wxwork"

Provider providerFromJson(String str) => Provider.fromJson(json.decode(str));
String providerToJson(Provider data) => json.encode(data.toJson());
class Provider {
  Provider({
      String? code, 
      String? uid, 
      String? driver,}){
    _code = code;
    _uid = uid;
    _driver = driver;
}

  Provider.fromJson(dynamic json) {
    _code = json['code'];
    _uid = json['uid'];
    _driver = json['driver'];
  }
  String? _code;
  String? _uid;
  String? _driver;

  String? get code => _code;
  String? get uid => _uid;
  String? get driver => _driver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['uid'] = _uid;
    map['driver'] = _driver;
    return map;
  }

}