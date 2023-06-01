/// cover : "https://img95.699pic.com/photo/50053/7318.jpg_wh300.jpg"
/// link : "/subpkg/shop_brand/index"
/// title : "招牌蜜汁叉烧饭"
/// id : 113

class PositionItem {
  PositionItem({
    String? cover,
    String? link,
    String? title,
    num? id,
  }) {
    _cover = cover;
    _link = link;
    _title = title;
    _id = id;
  }

  PositionItem.fromJson(dynamic json) {
    _cover = json['cover'];
    _link = json['link'];
    _title = json['title'];
    _id = json['id'];
  }
  String? _cover;
  String? _link;
  String? _title;
  num? _id;
  PositionItem copyWith({
    String? cover,
    String? link,
    String? title,
    num? id,
  }) =>
      PositionItem(
        cover: cover ?? _cover,
        link: link ?? _link,
        title: title ?? _title,
        id: id ?? _id,
      );
  String? get cover => _cover;
  String? get link => _link;
  String? get title => _title;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cover'] = _cover;
    map['link'] = _link;
    map['title'] = _title;
    map['id'] = _id;
    return map;
  }
}
