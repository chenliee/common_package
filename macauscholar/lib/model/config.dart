import 'dart:convert';
/// defaultService : "1718092347780:TUIFEE00K2+TUIMEAL001+TUIMEAL200"

Config configFromJson(String str) => Config.fromJson(json.decode(str));
String configToJson(Config data) => json.encode(data.toJson());
class Config {
  Config({
      String? defaultService,}){
    _defaultService = defaultService;
}

  Config.fromJson(dynamic json) {
    _defaultService = json['defaultService'];
  }
  String? _defaultService;
Config copyWith({  String? defaultService,
}) => Config(  defaultService: defaultService ?? _defaultService,
);
  String? get defaultService => _defaultService;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['defaultService'] = _defaultService;
    return map;
  }

}