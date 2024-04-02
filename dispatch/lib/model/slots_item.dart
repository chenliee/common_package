import 'dart:convert';
/// title : "2024-02-28"
/// code : "2024-02-28"
/// slots : [{"from":"08:00","to":"11:00","code":"08:00","available":false},{"from":"11:00","to":"13:00","code":"11:00","available":false},{"from":"14:00","to":"17:00","code":"14:00","available":false},{"from":"17:00","to":"19:00","code":"17:00","available":false}]

SlotsItem slotsItemFromJson(String str) => SlotsItem.fromJson(json.decode(str));
String slotsItemToJson(SlotsItem data) => json.encode(data.toJson());
class SlotsItem {
  SlotsItem({
      String? title, 
      String? code, 
      List<Slots>? slots,}){
    _title = title;
    _code = code;
    _slots = slots;
}

  SlotsItem.fromJson(dynamic json) {
    _title = json['title'];
    _code = json['code'];
    if (json['slots'] != null) {
      _slots = [];
      json['slots'].forEach((v) {
        _slots?.add(Slots.fromJson(v));
      });
    }
  }
  String? _title;
  String? _code;
  List<Slots>? _slots;
SlotsItem copyWith({  String? title,
  String? code,
  List<Slots>? slots,
}) => SlotsItem(  title: title ?? _title,
  code: code ?? _code,
  slots: slots ?? _slots,
);
  String? get title => _title;
  String? get code => _code;
  List<Slots>? get slots => _slots;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['code'] = _code;
    if (_slots != null) {
      map['slots'] = _slots?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// from : "08:00"
/// to : "11:00"
/// code : "08:00"
/// available : false

Slots slotsFromJson(String str) => Slots.fromJson(json.decode(str));
String slotsToJson(Slots data) => json.encode(data.toJson());
class Slots {
  Slots({
      String? from, 
      String? to, 
      String? code, 
      bool? available,}){
    _from = from;
    _to = to;
    _code = code;
    _available = available;
}

  Slots.fromJson(dynamic json) {
    _from = json['from'];
    _to = json['to'];
    _code = json['code'];
    _available = json['available'];
  }
  String? _from;
  String? _to;
  String? _code;
  bool? _available;
Slots copyWith({  String? from,
  String? to,
  String? code,
  bool? available,
}) => Slots(  from: from ?? _from,
  to: to ?? _to,
  code: code ?? _code,
  available: available ?? _available,
);
  String? get from => _from;
  String? get to => _to;
  String? get code => _code;
  bool? get available => _available;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['from'] = _from;
    map['to'] = _to;
    map['code'] = _code;
    map['available'] = _available;
    return map;
  }

}