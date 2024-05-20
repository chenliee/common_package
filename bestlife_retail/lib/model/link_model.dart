import 'dart:convert';

/// url : "s"

LinkModel linkModelFromJson(String str) => LinkModel.fromJson(json.decode(str));
String linkModelToJson(LinkModel data) => json.encode(data.toJson());

class LinkModel {
  LinkModel({
    String? url,
  }) {
    _url = url;
  }

  LinkModel.fromJson(dynamic json) {
    _url = json['url'];
  }
  String? _url;
  LinkModel copyWith({
    String? url,
  }) =>
      LinkModel(
        url: url ?? _url,
      );
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    return map;
  }
}
