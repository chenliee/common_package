class BrandItem {
  int? id;
  String? code;
  String? title;
  int? index;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  File? files;

  BrandItem(
      {this.id,
        this.code,
        this.title,
        this.index,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.files});

  BrandItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    title = json['title'];
    index = json['index'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    deletedAt = json['deletedAt'];
    files = json['files'] != null ? new File.fromJson(json['files']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['title'] = this.title;
    data['index'] = this.index;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['deletedAt'] = this.deletedAt;
    if (this.files != null) {
      data['files'] = this.files!.toJson();
    }
    return data;
  }
}

class File {
  Logo? logo;

  File({this.logo});

  File.fromJson(Map<String, dynamic> json) {
    logo = json['logo'] != null ? new Logo.fromJson(json['logo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.logo != null) {
      data['logo'] = this.logo!.toJson();
    }
    return data;
  }
}

class Logo {
  String? title;
  bool? multiple;
  dynamic desc;
  Values? value;

  Logo({this.title, this.multiple, this.desc, this.value});

  Logo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    multiple = json['multiple'];
    desc = json['desc'];
    value = json['value'] != null ? new Values.fromJson(json['value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['multiple'] = this.multiple;
    data['desc'] = this.desc;
    if (this.value != null) {
      data['value'] = this.value!.toJson();
    }
    return data;
  }
}

class Values {
  int? id;
  String? url;
  String? mime;
  String? name;
  String? size;
  String? hash;

  Values({this.id, this.url, this.mime, this.name, this.size, this.hash});

  Values.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    mime = json['mime'];
    name = json['name'];
    size = json['size'];
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['mime'] = this.mime;
    data['name'] = this.name;
    data['size'] = this.size;
    data['hash'] = this.hash;
    return data;
  }
}
