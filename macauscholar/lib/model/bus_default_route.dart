import 'dart:convert';
/// bus : "A-zhuhai"

BusDefaultRoute buxDefaultRouteFromJson(String str) => BusDefaultRoute.fromJson(json.decode(str));
String buxDefaultRouteToJson(BusDefaultRoute data) => json.encode(data.toJson());
class BusDefaultRoute {
  BusDefaultRoute({
      String? bus,}){
    _bus = bus;
}

  BusDefaultRoute.fromJson(dynamic json) {
    _bus = json['bus'];
  }
  String? _bus;

  String? get bus => _bus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bus'] = _bus;
    return map;
  }

}