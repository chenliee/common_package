import 'dart:convert';

/// id : 37
/// config : {"fee":[[10000,1900],[30000,0]],"slot":[{"to":720,"from":480},{"to":1140,"from":840}]}
/// fromId : 16
/// toId : 21
/// fromName : "氹仔"
/// toName : "九澳"

DeliveryPolicy deliveryPolicyFromJson(String str) =>
    DeliveryPolicy.fromJson(json.decode(str));
String deliveryPolicyToJson(DeliveryPolicy data) => json.encode(data.toJson());

class DeliveryPolicy {
  DeliveryPolicy({
    num? id,
    Config? config,
    num? fromId,
    num? toId,
    String? fromName,
    String? toName,
  }) {
    _id = id;
    _config = config;
    _fromId = fromId;
    _toId = toId;
    _fromName = fromName;
    _toName = toName;
  }

  DeliveryPolicy.fromJson(dynamic json) {
    _id = json['id'];
    _config = json['config'] != null ? Config.fromJson(json['config']) : null;
    _fromId = json['fromId'];
    _toId = json['toId'];
    _fromName = json['fromName'];
    _toName = json['toName'];
  }
  num? _id;
  Config? _config;
  num? _fromId;
  num? _toId;
  String? _fromName;
  String? _toName;
  DeliveryPolicy copyWith({
    num? id,
    Config? config,
    num? fromId,
    num? toId,
    String? fromName,
    String? toName,
  }) =>
      DeliveryPolicy(
        id: id ?? _id,
        config: config ?? _config,
        fromId: fromId ?? _fromId,
        toId: toId ?? _toId,
        fromName: fromName ?? _fromName,
        toName: toName ?? _toName,
      );
  num? get id => _id;
  Config? get config => _config;
  num? get fromId => _fromId;
  num? get toId => _toId;
  String? get fromName => _fromName;
  String? get toName => _toName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_config != null) {
      map['config'] = _config?.toJson();
    }
    map['fromId'] = _fromId;
    map['toId'] = _toId;
    map['fromName'] = _fromName;
    map['toName'] = _toName;
    return map;
  }
}

/// fee : [[10000,1900],[30000,0]]
/// slot : [{"to":720,"from":480},{"to":1140,"from":840}]

Config configFromJson(String str) => Config.fromJson(json.decode(str));
String configToJson(Config data) => json.encode(data.toJson());

class Config {
  Config({
    List<List<dynamic>>? fee,
    List<Slot>? slot,
  }) {
    _fee = fee;
    _slot = slot;
  }

  Config.fromJson(dynamic json) {
    _fee = json['fee'] != null ? json['fee'].cast<List<dynamic>>() : [];

    if (json['slot'] != null) {
      _slot = [];
      json['slot'].forEach((v) {
        _slot?.add(Slot.fromJson(v));
      });
    }
  }
  List<List<dynamic>>? _fee;
  List<Slot>? _slot;
  Config copyWith({
    List<List<num>>? fee,
    List<Slot>? slot,
  }) =>
      Config(
        fee: fee ?? _fee,
        slot: slot ?? _slot,
      );
  List<List<dynamic>>? get fee => _fee;
  List<Slot>? get slot => _slot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fee'] = _fee;
    if (_slot != null) {
      map['slot'] = _slot?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// to : 720
/// from : 480

Slot slotFromJson(String str) => Slot.fromJson(json.decode(str));
String slotToJson(Slot data) => json.encode(data.toJson());

class Slot {
  Slot({
    num? to,
    num? from,
  }) {
    _to = to;
    _from = from;
  }

  Slot.fromJson(dynamic json) {
    _to = json['to'];
    _from = json['from'];
  }
  num? _to;
  num? _from;
  Slot copyWith({
    num? to,
    num? from,
  }) =>
      Slot(
        to: to ?? _to,
        from: from ?? _from,
      );
  num? get to => _to;
  num? get from => _from;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['to'] = _to;
    map['from'] = _from;
    return map;
  }
}
