/// id : 2
/// name : "下午饭"
/// isOpen : false
/// hint : "即將開始"
/// openAt : "17:30:00"
/// closeAt : "18:00:00"
/// time : "17:30:00-18:00:00"
/// goodsList : [{"id":2,"goodsId":"1","imgUrl":"https://img0.baidu.com/it/u=3725332334,1095153558&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667","nativePrice":600,"nowPrice":588,"limit":99,"count":999,"sold":0},{"id":3,"goodsId":"2","imgUrl":"https://img0.baidu.com/it/u=3725332334,1095153558&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667","nativePrice":666,"nowPrice":444,"limit":99,"count":999,"sold":0}]
import 'package:marketing/model/spike_item.dart';

class SpikeList {
  SpikeList({
    num? id,
    String? name,
    bool? isOpen,
    String? hint,
    String? openAt,
    String? closeAt,
    String? time,
    List<SpikeItem>? goodsList,
  }) {
    _id = id;
    _name = name;
    _isOpen = isOpen;
    _hint = hint;
    _openAt = openAt;
    _closeAt = closeAt;
    _time = time;
    _goodsList = goodsList;
  }

  SpikeList.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _isOpen = json['isOpen'];
    _hint = json['hint'];
    _openAt = json['openAt'];
    _closeAt = json['closeAt'];
    _time = json['time'];
    if (json['goodsList'] != null) {
      _goodsList = [];
      json['goodsList'].forEach((v) {
        _goodsList?.add(SpikeItem.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  bool? _isOpen;
  String? _hint;
  String? _openAt;
  String? _closeAt;
  String? _time;
  List<SpikeItem>? _goodsList;

  SpikeList copyWith({
    num? id,
    String? name,
    bool? isOpen,
    String? hint,
    String? openAt,
    String? closeAt,
    String? time,
    List<SpikeItem>? goodsList,
  }) =>
      SpikeList(
        id: id ?? _id,
        name: name ?? _name,
        isOpen: isOpen ?? _isOpen,
        hint: hint ?? _hint,
        openAt: openAt ?? _openAt,
        closeAt: closeAt ?? _closeAt,
        time: time ?? _time,
        goodsList: goodsList ?? _goodsList,
      );

  num? get id => _id;
  String? get name => _name;
  bool? get isOpen => _isOpen;
  String? get hint => _hint;
  String? get openAt => _openAt;
  String? get closeAt => _closeAt;
  String? get time => _time;
  List<SpikeItem>? get goodsList => _goodsList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['isOpen'] = _isOpen;
    map['hint'] = _hint;
    map['openAt'] = _openAt;
    map['closeAt'] = _closeAt;
    map['time'] = _time;
    if (_goodsList != null) {
      map['goodsList'] = _goodsList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
