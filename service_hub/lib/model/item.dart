/// title : "封面"
/// multiple : true
/// desc : "商品、分類的封面"
/// values : [{"id":2419,"url":"https://storage.dev.heyday-catering.com:20443/service/public/a7963d4ee8369965011c70734319f198f1519ccb2cc0450071607f91cf3c972b_active-privilegebg.png","mime":"image/png","name":"active-privilegebg.png","size":"10861","hash":"a7963d4ee8369965011c70734319f198f1519ccb2cc0450071607f91cf3c972b"}]

class File {
  File({
    String? title,
    bool? multiple,
    String? desc,
    List<Values>? values,
  }) {
    _title = title;
    _multiple = multiple;
    _desc = desc;
    _values = values;
  }

  File.fromJson(dynamic json) {
    _title = json['title'];
    _multiple = json['multiple'];
    _desc = json['desc'];
    if (json['values'] != null) {
      _values = [];
      json['values'].forEach((v) {
        _values?.add(Values.fromJson(v));
      });
    }
  }
  String? _title;
  bool? _multiple;
  String? _desc;
  List<Values>? _values;
  File copyWith({
    String? title,
    bool? multiple,
    String? desc,
    List<Values>? values,
  }) =>
      File(
        title: title ?? _title,
        multiple: multiple ?? _multiple,
        desc: desc ?? _desc,
        values: values ?? _values,
      );
  String? get title => _title;
  bool? get multiple => _multiple;
  String? get desc => _desc;
  List<Values>? get values => _values;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['multiple'] = _multiple;
    map['desc'] = _desc;
    if (_values != null) {
      map['values'] = _values?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 2419
/// url : "https://storage.dev.heyday-catering.com:20443/service/public/a7963d4ee8369965011c70734319f198f1519ccb2cc0450071607f91cf3c972b_active-privilegebg.png"
/// mime : "image/png"
/// name : "active-privilegebg.png"
/// size : "10861"
/// hash : "a7963d4ee8369965011c70734319f198f1519ccb2cc0450071607f91cf3c972b"

class Values {
  Values({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) {
    _id = id;
    _url = url;
    _mime = mime;
    _name = name;
    _size = size;
    _hash = hash;
  }

  Values.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _mime = json['mime'];
    _name = json['name'];
    _size = json['size'];
    _hash = json['hash'];
  }
  num? _id;
  String? _url;
  String? _mime;
  String? _name;
  String? _size;
  String? _hash;
  Values copyWith({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) =>
      Values(
        id: id ?? _id,
        url: url ?? _url,
        mime: mime ?? _mime,
        name: name ?? _name,
        size: size ?? _size,
        hash: hash ?? _hash,
      );
  num? get id => _id;
  String? get url => _url;
  String? get mime => _mime;
  String? get name => _name;
  String? get size => _size;
  String? get hash => _hash;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['mime'] = _mime;
    map['name'] = _name;
    map['size'] = _size;
    map['hash'] = _hash;
    return map;
  }
}
