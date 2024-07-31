import 'dart:convert';
/// uid : "c352f0f2-70a4-4b1c-b28f-4c9c1f7ec763"
/// mid : "heyday"
/// rules : ["employee"]
/// token : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiJjMzUyZjBmMi03MGE0LTRiMWMtYjI4Zi00YzljMWY3ZWM3NjMiLCJtaWQiOiJoZXlkYXkiLCJydWxlcyI6WyJlbXBsb3llZSJdLCJpYXQiOjE3MjIyNDAwODQsImV4cCI6MTcyMjg0NDg4NH0.6QWid5bcvw403t-Btud-UmtIH-xGDudzdkp87MQrZ3u50oDx_3Toyv72dY_PchJZXqJ42rnDfxtaweDoba65AI7VRxgioIqUy9sP1JSBbYfZ4z-Dwfj4FNXe-wwIoc8Eguy0QZpbKuPl6fFBgbpHUcQi8GNFueIQM5IRxtehsHREewL0Er0hVJdwr_hhZ7UJsgjsebMkGXR5WKANe3Mj3ZOWs5fFN_J8ku8yo3FaH7E-YfIr6SYAyn-d-btIigj6I_TjXQB_KQLKOkbmrDvl7GgZdyf85B72eFhumAQFyVgL3VZnIX_RUx6KiU1VU4R3EDSY6_FTx9jVpBGK-RAv0A"

MerLogin merLoginFromJson(String str) => MerLogin.fromJson(json.decode(str));
String merLoginToJson(MerLogin data) => json.encode(data.toJson());
class MerLogin {
  MerLogin({
      String? uid, 
      String? mid, 
      List<String>? rules, 
      String? token,}){
    _uid = uid;
    _mid = mid;
    _rules = rules;
    _token = token;
}

  MerLogin.fromJson(dynamic json) {
    _uid = json['uid'];
    _mid = json['mid'];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    _token = json['token'];
  }
  String? _uid;
  String? _mid;
  List<String>? _rules;
  String? _token;

  String? get uid => _uid;
  String? get mid => _mid;
  List<String>? get rules => _rules;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uid'] = _uid;
    map['mid'] = _mid;
    map['rules'] = _rules;
    map['token'] = _token;
    return map;
  }

}