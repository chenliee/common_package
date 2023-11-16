/// id : 60
/// userId : 83
/// itemId : "saas-servicehub:goods-556542405925820957"
/// info : {"shopId":"saas-cropinfo:heyday-B01-reese"}
/// projectId : 2
/// isDelete : 0
/// createdAt : "2023-11-15T08:21:36.760Z"
/// updatedAt : "2023-11-15T08:21:45.904Z"

class FavoriteItem {
  FavoriteItem({
      num? id, 
      num? userId, 
      String? itemId, 
      Info? info, 
      num? projectId, 
      num? isDelete, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _itemId = itemId;
    _info = info;
    _projectId = projectId;
    _isDelete = isDelete;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  FavoriteItem.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _itemId = json['itemId'];
    _info = json['info'] != null ? Info.fromJson(json['info']) : null;
    _projectId = json['projectId'];
    _isDelete = json['isDelete'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _userId;
  String? _itemId;
  Info? _info;
  num? _projectId;
  num? _isDelete;
  String? _createdAt;
  String? _updatedAt;
FavoriteItem copyWith({  num? id,
  num? userId,
  String? itemId,
  Info? info,
  num? projectId,
  num? isDelete,
  String? createdAt,
  String? updatedAt,
}) => FavoriteItem(  id: id ?? _id,
  userId: userId ?? _userId,
  itemId: itemId ?? _itemId,
  info: info ?? _info,
  projectId: projectId ?? _projectId,
  isDelete: isDelete ?? _isDelete,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get userId => _userId;
  String? get itemId => _itemId;
  Info? get info => _info;
  num? get projectId => _projectId;
  num? get isDelete => _isDelete;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['itemId'] = _itemId;
    if (_info != null) {
      map['info'] = _info?.toJson();
    }
    map['projectId'] = _projectId;
    map['isDelete'] = _isDelete;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// shopId : "saas-cropinfo:heyday-B01-reese"

class Info {
  Info({
      String? shopId,}){
    _shopId = shopId;
}

  Info.fromJson(dynamic json) {
    _shopId = json['shopId'];
  }
  String? _shopId;
Info copyWith({  String? shopId,
}) => Info(  shopId: shopId ?? _shopId,
);
  String? get shopId => _shopId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shopId'] = _shopId;
    return map;
  }

}