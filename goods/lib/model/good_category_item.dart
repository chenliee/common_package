/// id : 1
/// gid : 1
/// cid : 1
/// good : {"id":1,"projectId":1,"name":"一杯橙汁","barcode":"111111111111"}
/// category : {"id":1,"projectId":1,"parentId":1,"path":"[path]","name":"name","title":"標題"}

class GoodCategoryItem {
  GoodCategoryItem({
      num? id, 
      num? gid, 
      num? cid, 
      Good? good, 
      Category? category,}){
    _id = id;
    _gid = gid;
    _cid = cid;
    _good = good;
    _category = category;
}

  GoodCategoryItem.fromJson(dynamic json) {
    _id = json['id'];
    _gid = json['gid'];
    _cid = json['cid'];
    _good = json['good'] != null ? Good.fromJson(json['good']) : null;
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }
  num? _id;
  num? _gid;
  num? _cid;
  Good? _good;
  Category? _category;
GoodCategoryItem copyWith({  num? id,
  num? gid,
  num? cid,
  Good? good,
  Category? category,
}) => GoodCategoryItem(  id: id ?? _id,
  gid: gid ?? _gid,
  cid: cid ?? _cid,
  good: good ?? _good,
  category: category ?? _category,
);
  num? get id => _id;
  num? get gid => _gid;
  num? get cid => _cid;
  Good? get good => _good;
  Category? get category => _category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['gid'] = _gid;
    map['cid'] = _cid;
    if (_good != null) {
      map['good'] = _good?.toJson();
    }
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    return map;
  }

}

/// id : 1
/// projectId : 1
/// parentId : 1
/// path : "[path]"
/// name : "name"
/// title : "標題"

class Category {
  Category({
      num? id, 
      num? projectId, 
      num? parentId, 
      String? path, 
      String? name, 
      String? title,}){
    _id = id;
    _projectId = projectId;
    _parentId = parentId;
    _path = path;
    _name = name;
    _title = title;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _parentId = json['parentId'];
    _path = json['path'];
    _name = json['name'];
    _title = json['title'];
  }
  num? _id;
  num? _projectId;
  num? _parentId;
  String? _path;
  String? _name;
  String? _title;
Category copyWith({  num? id,
  num? projectId,
  num? parentId,
  String? path,
  String? name,
  String? title,
}) => Category(  id: id ?? _id,
  projectId: projectId ?? _projectId,
  parentId: parentId ?? _parentId,
  path: path ?? _path,
  name: name ?? _name,
  title: title ?? _title,
);
  num? get id => _id;
  num? get projectId => _projectId;
  num? get parentId => _parentId;
  String? get path => _path;
  String? get name => _name;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['parentId'] = _parentId;
    map['path'] = _path;
    map['name'] = _name;
    map['title'] = _title;
    return map;
  }

}

/// id : 1
/// projectId : 1
/// name : "一杯橙汁"
/// barcode : "111111111111"

class Good {
  Good({
      num? id, 
      num? projectId, 
      String? name, 
      String? barcode,}){
    _id = id;
    _projectId = projectId;
    _name = name;
    _barcode = barcode;
}

  Good.fromJson(dynamic json) {
    _id = json['id'];
    _projectId = json['projectId'];
    _name = json['name'];
    _barcode = json['barcode'];
  }
  num? _id;
  num? _projectId;
  String? _name;
  String? _barcode;
Good copyWith({  num? id,
  num? projectId,
  String? name,
  String? barcode,
}) => Good(  id: id ?? _id,
  projectId: projectId ?? _projectId,
  name: name ?? _name,
  barcode: barcode ?? _barcode,
);
  num? get id => _id;
  num? get projectId => _projectId;
  String? get name => _name;
  String? get barcode => _barcode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['projectId'] = _projectId;
    map['name'] = _name;
    map['barcode'] = _barcode;
    return map;
  }

}