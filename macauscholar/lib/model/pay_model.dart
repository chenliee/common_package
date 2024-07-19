import 'dart:convert';

/// sign : "Sda"
/// service : "sad"
/// number : "asd"
/// nonce : "asd"
/// payWait : 2

PayModel payModelFromJson(String str) => PayModel.fromJson(json.decode(str));
String payModelToJson(PayModel data) => json.encode(data.toJson());

class PayModel {
  PayModel({
    String? sign,
    String? service,
    String? number,
    String? nonce,
    String? type,
    num? payWait,
  }) {
    _sign = sign;
    _service = service;
    _number = number;
    _nonce = nonce;
    _type = type;
    _payWait = payWait;
  }

  PayModel.fromJson(dynamic json) {
    _sign = json['sign'];
    _service = json['service'];
    _number = json['number'];
    _nonce = json['nonce'];
    _payWait = json['payWait'];
    _type = json['type'];
  }
  String? _sign;
  String? _service;
  String? _number;
  String? _nonce;
  num? _payWait;
  String? _type;
  PayModel copyWith(
          {String? sign,
          String? service,
          String? number,
          String? nonce,
          num? payWait,
          String? type}) =>
      PayModel(
        sign: sign ?? _sign,
        service: service ?? _service,
        number: number ?? _number,
        nonce: nonce ?? _nonce,
        payWait: payWait ?? _payWait,
        type: type ?? _type,
      );
  String? get sign => _sign;
  String? get service => _service;
  String? get number => _number;
  String? get nonce => _nonce;
  num? get payWait => _payWait;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sign'] = _sign;
    map['service'] = _service;
    map['number'] = _number;
    map['nonce'] = _nonce;
    map['payWait'] = _payWait;
    map['type'] = _type;
    return map;
  }
}
