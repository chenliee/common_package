import 'dart:convert';

import 'delivery_policy.dart';

/// minFee : 10000
/// deliveryFee : 1900
/// slot : [{"to":720,"from":480}]

DeliveryItem deliveryItemFromJson(String str) =>
    DeliveryItem.fromJson(json.decode(str));
String deliveryItemToJson(DeliveryItem data) => json.encode(data.toJson());

class DeliveryItem {
  DeliveryItem({
    num? minFee,
    num? deliveryFee,
    List<Slot>? slot,
  }) {
    _minFee = minFee;
    _deliveryFee = deliveryFee;
    _slot = slot;
  }

  DeliveryItem.fromJson(dynamic json) {
    _minFee = json['minFee'];
    _deliveryFee = json['deliveryFee'];
    if (json['slot'] != null) {
      _slot = [];
      json['slot'].forEach((v) {
        _slot?.add(Slot.fromJson(v));
      });
    }
  }
  num? _minFee;
  num? _deliveryFee;
  List<Slot>? _slot;
  DeliveryItem copyWith({
    num? minFee,
    num? deliveryFee,
    List<Slot>? slot,
  }) =>
      DeliveryItem(
        minFee: minFee ?? _minFee,
        deliveryFee: deliveryFee ?? _deliveryFee,
        slot: slot ?? _slot,
      );
  num? get minFee => _minFee;
  num? get deliveryFee => _deliveryFee;
  List<Slot>? get slot => _slot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['minFee'] = _minFee;
    map['deliveryFee'] = _deliveryFee;
    if (_slot != null) {
      map['slot'] = _slot?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
