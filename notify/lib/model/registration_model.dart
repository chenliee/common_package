/// uuid : "cA8f9idQlS8iHoO10PWf7"
/// data : {"action":"device-registration","params":{"code":"982971"}}

class RegistrationModel {
  RegistrationModel({
      String? uuid, 
      Data? data,}){
    _uuid = uuid;
    _data = data;
}

  RegistrationModel.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _uuid;
  Data? _data;
RegistrationModel copyWith({  String? uuid,
  Data? data,
}) => RegistrationModel(  uuid: uuid ?? _uuid,
  data: data ?? _data,
);
  String? get uuid => _uuid;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// action : "device-registration"
/// params : {"code":"982971"}

class Data {
  Data({
      String? action, 
      Params? params,}){
    _action = action;
    _params = params;
}

  Data.fromJson(dynamic json) {
    _action = json['action'];
    _params = json['params'] != null ? Params.fromJson(json['params']) : null;
  }
  String? _action;
  Params? _params;
Data copyWith({  String? action,
  Params? params,
}) => Data(  action: action ?? _action,
  params: params ?? _params,
);
  String? get action => _action;
  Params? get params => _params;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['action'] = _action;
    if (_params != null) {
      map['params'] = _params?.toJson();
    }
    return map;
  }

}

/// code : "982971"

class Params {
  Params({
      String? code,}){
    _code = code;
}

  Params.fromJson(dynamic json) {
    _code = json['code'];
  }
  String? _code;
Params copyWith({  String? code,
}) => Params(  code: code ?? _code,
);
  String? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    return map;
  }

}