/// file : {"id":114,"url":"https://storage.dev.heyday-catering.com:20443/member/public/3c357236a9b3d38ce0fe4a84d5373e18910b69195d37b6a86517e06f4e9d799c_upload_1699607476443.0.9121347461494227.0.png","mime":"image/png","name":"banner.png","size":"78773","hash":"3c357236a9b3d38ce0fe4a84d5373e18910b69195d37b6a86517e06f4e9d799c"}

class UploadItem {
  UploadItem({
    File? file,
  }) {
    _file = file;
  }

  UploadItem.fromJson(dynamic json) {
    _file = json['file'] != null ? File.fromJson(json['file']) : null;
  }
  File? _file;
  UploadItem copyWith({
    File? file,
  }) =>
      UploadItem(
        file: file ?? _file,
      );
  File? get file => _file;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_file != null) {
      map['file'] = _file?.toJson();
    }
    return map;
  }
}

/// id : 114
/// url : "https://storage.dev.heyday-catering.com:20443/member/public/3c357236a9b3d38ce0fe4a84d5373e18910b69195d37b6a86517e06f4e9d799c_upload_1699607476443.0.9121347461494227.0.png"
/// mime : "image/png"
/// name : "banner.png"
/// size : "78773"
/// hash : "3c357236a9b3d38ce0fe4a84d5373e18910b69195d37b6a86517e06f4e9d799c"

class File {
  File({
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

  File.fromJson(dynamic json) {
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
  File copyWith({
    num? id,
    String? url,
    String? mime,
    String? name,
    String? size,
    String? hash,
  }) =>
      File(
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
