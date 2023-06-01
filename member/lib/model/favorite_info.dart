class FavoriteInfo {
  int? id;
  String? createAt;
  String? updateAt;
  int? userId;
  String? itemId;
  int? isDelete;
  int? projectId;

  FavoriteInfo({
    this.id,
    this.createAt,
    this.updateAt,
    this.userId,
    this.itemId,
    this.isDelete,
    this.projectId,
  });

  FavoriteInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['createAt'];
    updateAt = json['updateAt'];
    userId = json['userId'];
    itemId = json['itemId'];
    isDelete = json['isDelete'];
    projectId = json['projectId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createAt'] = createAt;
    data['updateAt'] = updateAt;
    data['userId'] = userId;
    data['itemId'] = itemId;
    data['isDelete'] = isDelete;
    data['projectId'] = projectId;
    return data;
  }
}
