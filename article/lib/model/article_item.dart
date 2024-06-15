import 'dart:convert';

/// id : 1039
/// title : "卓越教育"
/// suTitle : null
/// code : "excellent_education"
/// body : "<p>提供高品質專業教學和學習資源，以及安全及互相尊重的學習環境，以促進學生學術及生活成功，幫助其充分發揮潛能，培育未來領袖。</p>"
/// langId : 3
/// id_old : null
/// publishedAt : "2024-06-10T16:00:00.000Z"
/// template : null
/// date : null
/// description : null
/// createdAt : "2024-06-11T09:33:15.551Z"
/// old_createdAt : null
/// coverId : 1060
/// merchantId : 1
/// categoryId : null
/// cover : {"id":1060,"provider":"default","merchantId":1,"name":"卓越教育.jpg","hash":"d5ee69264ab48348ea712fc8eaf6b6221542e100929daf27443b45908948c130","ext":".jpg","mime":"image/jpeg","size":"39463","path":"d5ee69264ab48348ea712fc8eaf6b6221542e100929daf27443b45908948c130_卓越教育.jpg","upload":{"etag":"cf6dc8c5e7f2cf0646a2d60c30ccf3c8","versionId":null},"createdAt":"2024-06-12T03:29:35.166Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/d5ee69264ab48348ea712fc8eaf6b6221542e100929daf27443b45908948c130_%E5%8D%93%E8%B6%8A%E6%95%99%E8%82%B2.jpg"}
/// lang : {"createdAt":"2024-03-01T06:27:29.712Z","id":3,"title":"zh-Hant","code":"zh-Hant","description":null}
/// merchant : {"id":1,"code":"scholar","title":"儒林教育","createdAt":"2023-12-21T05:58:03.597Z"}
/// tags : [{"id":5,"merchantId":1,"name":"英文","description":"1","inside":true,"createdAt":"2024-05-28T09:05:52.122Z","updatedAt":"2024-05-28T09:05:52.122Z"}]
/// files : {"banner":{"title":"文章的多個圖片","multiple":true,"desc":null,"code":"banner","values":[{"id":1061,"provider":"default","merchantId":1,"name":"矢量智能对象@3x 1@3x.png","hash":"b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36","ext":".png","mime":"image/png","size":"9705","path":"b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_矢量智能对象@3x 1@3x.png","upload":{"etag":"71fc0339d30ba83293f4813b357da12e","versionId":null},"createdAt":"2024-06-12T03:30:27.596Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_%E7%9F%A2%E9%87%8F%E6%99%BA%E8%83%BD%E5%AF%B9%E8%B1%A1@3x%201@3x.png"},{"id":1062,"provider":"default","merchantId":1,"name":"$RTGDKY1 1@3x.png","hash":"47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27","ext":".png","mime":"image/png","size":"5323","path":"47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27_$RTGDKY1 1@3x.png","upload":{"etag":"5e90bb4d4c65dd2219f28b294b07d154","versionId":null},"createdAt":"2024-06-12T03:30:27.620Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27_$RTGDKY1%201@3x.png"}]}}

ArticleItem articleItemFromJson(String str) =>
    ArticleItem.fromJson(json.decode(str));
String articleItemToJson(ArticleItem data) => json.encode(data.toJson());

class ArticleItem {
  ArticleItem({
    num? id,
    String? title,
    dynamic suTitle,
    String? code,
    String? body,
    num? langId,
    dynamic idOld,
    String? publishedAt,
    dynamic template,
    dynamic date,
    dynamic description,
    String? createdAt,
    dynamic oldCreatedAt,
    num? coverId,
    num? merchantId,
    dynamic categoryId,
    Cover? cover,
    Lang? lang,
    Merchant? merchant,
    List<Tags>? tags,
    Files? files,
  }) {
    _id = id;
    _title = title;
    _suTitle = suTitle;
    _code = code;
    _body = body;
    _langId = langId;
    _idOld = idOld;
    _publishedAt = publishedAt;
    _template = template;
    _date = date;
    _description = description;
    _createdAt = createdAt;
    _oldCreatedAt = oldCreatedAt;
    _coverId = coverId;
    _merchantId = merchantId;
    _categoryId = categoryId;
    _cover = cover;
    _lang = lang;
    _merchant = merchant;
    _tags = tags;
    _files = files;
  }

  ArticleItem.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _suTitle = json['suTitle'];
    _code = json['code'];
    _body = json['body'];
    _langId = json['langId'];
    _idOld = json['id_old'];
    _publishedAt = json['publishedAt'];
    _template = json['template'];
    _date = json['date'];
    _description = json['description'];
    _createdAt = json['createdAt'];
    _oldCreatedAt = json['old_createdAt'];
    _coverId = json['coverId'];
    _merchantId = json['merchantId'];
    _categoryId = json['categoryId'];
    _cover = json['cover'] != null ? Cover.fromJson(json['cover']) : null;
    _lang = json['lang'] != null ? Lang.fromJson(json['lang']) : null;
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    if (json['tags'] != null) {
      _tags = [];
      json['tags'].forEach((v) {
        _tags?.add(Tags.fromJson(v));
      });
    }
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
  }
  num? _id;
  String? _title;
  dynamic _suTitle;
  String? _code;
  String? _body;
  num? _langId;
  dynamic _idOld;
  String? _publishedAt;
  dynamic _template;
  dynamic _date;
  dynamic _description;
  String? _createdAt;
  dynamic _oldCreatedAt;
  num? _coverId;
  num? _merchantId;
  dynamic _categoryId;
  Cover? _cover;
  Lang? _lang;
  Merchant? _merchant;
  List<Tags>? _tags;
  Files? _files;
  ArticleItem copyWith({
    num? id,
    String? title,
    dynamic suTitle,
    String? code,
    String? body,
    num? langId,
    dynamic idOld,
    String? publishedAt,
    dynamic template,
    dynamic date,
    dynamic description,
    String? createdAt,
    dynamic oldCreatedAt,
    num? coverId,
    num? merchantId,
    dynamic categoryId,
    Cover? cover,
    Lang? lang,
    Merchant? merchant,
    List<Tags>? tags,
    Files? files,
  }) =>
      ArticleItem(
        id: id ?? _id,
        title: title ?? _title,
        suTitle: suTitle ?? _suTitle,
        code: code ?? _code,
        body: body ?? _body,
        langId: langId ?? _langId,
        idOld: idOld ?? _idOld,
        publishedAt: publishedAt ?? _publishedAt,
        template: template ?? _template,
        date: date ?? _date,
        description: description ?? _description,
        createdAt: createdAt ?? _createdAt,
        oldCreatedAt: oldCreatedAt ?? _oldCreatedAt,
        coverId: coverId ?? _coverId,
        merchantId: merchantId ?? _merchantId,
        categoryId: categoryId ?? _categoryId,
        cover: cover ?? _cover,
        lang: lang ?? _lang,
        merchant: merchant ?? _merchant,
        tags: tags ?? _tags,
        files: files ?? _files,
      );
  num? get id => _id;
  String? get title => _title;
  dynamic get suTitle => _suTitle;
  String? get code => _code;
  String? get body => _body;
  num? get langId => _langId;
  dynamic get idOld => _idOld;
  String? get publishedAt => _publishedAt;
  dynamic get template => _template;
  dynamic get date => _date;
  dynamic get description => _description;
  String? get createdAt => _createdAt;
  dynamic get oldCreatedAt => _oldCreatedAt;
  num? get coverId => _coverId;
  num? get merchantId => _merchantId;
  dynamic get categoryId => _categoryId;
  Cover? get cover => _cover;
  Lang? get lang => _lang;
  Merchant? get merchant => _merchant;
  List<Tags>? get tags => _tags;
  Files? get files => _files;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['suTitle'] = _suTitle;
    map['code'] = _code;
    map['body'] = _body;
    map['langId'] = _langId;
    map['id_old'] = _idOld;
    map['publishedAt'] = _publishedAt;
    map['template'] = _template;
    map['date'] = _date;
    map['description'] = _description;
    map['createdAt'] = _createdAt;
    map['old_createdAt'] = _oldCreatedAt;
    map['coverId'] = _coverId;
    map['merchantId'] = _merchantId;
    map['categoryId'] = _categoryId;
    if (_cover != null) {
      map['cover'] = _cover?.toJson();
    }
    if (_lang != null) {
      map['lang'] = _lang?.toJson();
    }
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    if (_tags != null) {
      map['tags'] = _tags?.map((v) => v.toJson()).toList();
    }
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    return map;
  }
}

/// banner : {"title":"文章的多個圖片","multiple":true,"desc":null,"code":"banner","values":[{"id":1061,"provider":"default","merchantId":1,"name":"矢量智能对象@3x 1@3x.png","hash":"b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36","ext":".png","mime":"image/png","size":"9705","path":"b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_矢量智能对象@3x 1@3x.png","upload":{"etag":"71fc0339d30ba83293f4813b357da12e","versionId":null},"createdAt":"2024-06-12T03:30:27.596Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_%E7%9F%A2%E9%87%8F%E6%99%BA%E8%83%BD%E5%AF%B9%E8%B1%A1@3x%201@3x.png"},{"id":1062,"provider":"default","merchantId":1,"name":"$RTGDKY1 1@3x.png","hash":"47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27","ext":".png","mime":"image/png","size":"5323","path":"47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27_$RTGDKY1 1@3x.png","upload":{"etag":"5e90bb4d4c65dd2219f28b294b07d154","versionId":null},"createdAt":"2024-06-12T03:30:27.620Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27_$RTGDKY1%201@3x.png"}]}

Files filesFromJson(String str) => Files.fromJson(json.decode(str));
String filesToJson(Files data) => json.encode(data.toJson());

class Files {
  Files({
    Banner? banner,
  }) {
    _banner = banner;
  }

  Files.fromJson(dynamic json) {
    _banner = json['banner'] != null ? Banner.fromJson(json['banner']) : null;
  }
  Banner? _banner;
  Files copyWith({
    Banner? banner,
  }) =>
      Files(
        banner: banner ?? _banner,
      );
  Banner? get banner => _banner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_banner != null) {
      map['banner'] = _banner?.toJson();
    }
    return map;
  }
}

/// title : "文章的多個圖片"
/// multiple : true
/// desc : null
/// code : "banner"
/// values : [{"id":1061,"provider":"default","merchantId":1,"name":"矢量智能对象@3x 1@3x.png","hash":"b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36","ext":".png","mime":"image/png","size":"9705","path":"b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_矢量智能对象@3x 1@3x.png","upload":{"etag":"71fc0339d30ba83293f4813b357da12e","versionId":null},"createdAt":"2024-06-12T03:30:27.596Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_%E7%9F%A2%E9%87%8F%E6%99%BA%E8%83%BD%E5%AF%B9%E8%B1%A1@3x%201@3x.png"},{"id":1062,"provider":"default","merchantId":1,"name":"$RTGDKY1 1@3x.png","hash":"47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27","ext":".png","mime":"image/png","size":"5323","path":"47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27_$RTGDKY1 1@3x.png","upload":{"etag":"5e90bb4d4c65dd2219f28b294b07d154","versionId":null},"createdAt":"2024-06-12T03:30:27.620Z","url":"https://storage.dev.heyday-catering.com:20443/saas-article/public/47b6c00f46bf6e94147d6dacf5ac28d6336340b25d6310a1d44f2686011c4e27_$RTGDKY1%201@3x.png"}]

Banner bannerFromJson(String str) => Banner.fromJson(json.decode(str));
String bannerToJson(Banner data) => json.encode(data.toJson());

class Banner {
  Banner({
    String? title,
    bool? multiple,
    dynamic desc,
    String? code,
    List<Values>? values,
  }) {
    _title = title;
    _multiple = multiple;
    _desc = desc;
    _code = code;
    _values = values;
  }

  Banner.fromJson(dynamic json) {
    _title = json['title'];
    _multiple = json['multiple'];
    _desc = json['desc'];
    _code = json['code'];
    if (json['values'] != null) {
      _values = [];
      json['values'].forEach((v) {
        _values?.add(Values.fromJson(v));
      });
    }
  }
  String? _title;
  bool? _multiple;
  dynamic _desc;
  String? _code;
  List<Values>? _values;
  Banner copyWith({
    String? title,
    bool? multiple,
    dynamic desc,
    String? code,
    List<Values>? values,
  }) =>
      Banner(
        title: title ?? _title,
        multiple: multiple ?? _multiple,
        desc: desc ?? _desc,
        code: code ?? _code,
        values: values ?? _values,
      );
  String? get title => _title;
  bool? get multiple => _multiple;
  dynamic get desc => _desc;
  String? get code => _code;
  List<Values>? get values => _values;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['multiple'] = _multiple;
    map['desc'] = _desc;
    map['code'] = _code;
    if (_values != null) {
      map['values'] = _values?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1061
/// provider : "default"
/// merchantId : 1
/// name : "矢量智能对象@3x 1@3x.png"
/// hash : "b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36"
/// ext : ".png"
/// mime : "image/png"
/// size : "9705"
/// path : "b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_矢量智能对象@3x 1@3x.png"
/// upload : {"etag":"71fc0339d30ba83293f4813b357da12e","versionId":null}
/// createdAt : "2024-06-12T03:30:27.596Z"
/// url : "https://storage.dev.heyday-catering.com:20443/saas-article/public/b705a5ab7a95d14b663bdf26411510fb2bde0380c87f79a98523d27b5e5d4b36_%E7%9F%A2%E9%87%8F%E6%99%BA%E8%83%BD%E5%AF%B9%E8%B1%A1@3x%201@3x.png"

Values valuesFromJson(String str) => Values.fromJson(json.decode(str));
String valuesToJson(Values data) => json.encode(data.toJson());

class Values {
  Values({
    num? id,
    String? provider,
    num? merchantId,
    String? name,
    String? hash,
    String? ext,
    String? mime,
    String? size,
    String? path,
    Upload? upload,
    String? createdAt,
    String? url,
  }) {
    _id = id;
    _provider = provider;
    _merchantId = merchantId;
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _size = size;
    _path = path;
    _upload = upload;
    _createdAt = createdAt;
    _url = url;
  }

  Values.fromJson(dynamic json) {
    _id = json['id'];
    _provider = json['provider'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _size = json['size'];
    _path = json['path'];
    _upload = json['upload'] != null ? Upload.fromJson(json['upload']) : null;
    _createdAt = json['createdAt'];
    _url = json['url'];
  }
  num? _id;
  String? _provider;
  num? _merchantId;
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  String? _size;
  String? _path;
  Upload? _upload;
  String? _createdAt;
  String? _url;
  Values copyWith({
    num? id,
    String? provider,
    num? merchantId,
    String? name,
    String? hash,
    String? ext,
    String? mime,
    String? size,
    String? path,
    Upload? upload,
    String? createdAt,
    String? url,
  }) =>
      Values(
        id: id ?? _id,
        provider: provider ?? _provider,
        merchantId: merchantId ?? _merchantId,
        name: name ?? _name,
        hash: hash ?? _hash,
        ext: ext ?? _ext,
        mime: mime ?? _mime,
        size: size ?? _size,
        path: path ?? _path,
        upload: upload ?? _upload,
        createdAt: createdAt ?? _createdAt,
        url: url ?? _url,
      );
  num? get id => _id;
  String? get provider => _provider;
  num? get merchantId => _merchantId;
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  String? get size => _size;
  String? get path => _path;
  Upload? get upload => _upload;
  String? get createdAt => _createdAt;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['provider'] = _provider;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['size'] = _size;
    map['path'] = _path;
    if (_upload != null) {
      map['upload'] = _upload?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['url'] = _url;
    return map;
  }
}

/// etag : "71fc0339d30ba83293f4813b357da12e"
/// versionId : null

Upload uploadFromJson(String str) => Upload.fromJson(json.decode(str));
String uploadToJson(Upload data) => json.encode(data.toJson());

class Upload {
  Upload({
    String? etag,
    dynamic versionId,
  }) {
    _etag = etag;
    _versionId = versionId;
  }

  Upload.fromJson(dynamic json) {
    _etag = json['etag'];
    _versionId = json['versionId'];
  }
  String? _etag;
  dynamic _versionId;
  Upload copyWith({
    String? etag,
    dynamic versionId,
  }) =>
      Upload(
        etag: etag ?? _etag,
        versionId: versionId ?? _versionId,
      );
  String? get etag => _etag;
  dynamic get versionId => _versionId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['etag'] = _etag;
    map['versionId'] = _versionId;
    return map;
  }
}

/// id : 5
/// merchantId : 1
/// name : "英文"
/// description : "1"
/// inside : true
/// createdAt : "2024-05-28T09:05:52.122Z"
/// updatedAt : "2024-05-28T09:05:52.122Z"

Tags tagsFromJson(String str) => Tags.fromJson(json.decode(str));
String tagsToJson(Tags data) => json.encode(data.toJson());

class Tags {
  Tags({
    num? id,
    num? merchantId,
    String? name,
    String? description,
    bool? inside,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _merchantId = merchantId;
    _name = name;
    _description = description;
    _inside = inside;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Tags.fromJson(dynamic json) {
    _id = json['id'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _description = json['description'];
    _inside = json['inside'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  num? _merchantId;
  String? _name;
  String? _description;
  bool? _inside;
  String? _createdAt;
  String? _updatedAt;
  Tags copyWith({
    num? id,
    num? merchantId,
    String? name,
    String? description,
    bool? inside,
    String? createdAt,
    String? updatedAt,
  }) =>
      Tags(
        id: id ?? _id,
        merchantId: merchantId ?? _merchantId,
        name: name ?? _name,
        description: description ?? _description,
        inside: inside ?? _inside,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  num? get merchantId => _merchantId;
  String? get name => _name;
  String? get description => _description;
  bool? get inside => _inside;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['description'] = _description;
    map['inside'] = _inside;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}

/// id : 1
/// code : "scholar"
/// title : "儒林教育"
/// createdAt : "2023-12-21T05:58:03.597Z"

Merchant merchantFromJson(String str) => Merchant.fromJson(json.decode(str));
String merchantToJson(Merchant data) => json.encode(data.toJson());

class Merchant {
  Merchant({
    num? id,
    String? code,
    String? title,
    String? createdAt,
  }) {
    _id = id;
    _code = code;
    _title = title;
    _createdAt = createdAt;
  }

  Merchant.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _title = json['title'];
    _createdAt = json['createdAt'];
  }
  num? _id;
  String? _code;
  String? _title;
  String? _createdAt;
  Merchant copyWith({
    num? id,
    String? code,
    String? title,
    String? createdAt,
  }) =>
      Merchant(
        id: id ?? _id,
        code: code ?? _code,
        title: title ?? _title,
        createdAt: createdAt ?? _createdAt,
      );
  num? get id => _id;
  String? get code => _code;
  String? get title => _title;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['title'] = _title;
    map['createdAt'] = _createdAt;
    return map;
  }
}

/// createdAt : "2024-03-01T06:27:29.712Z"
/// id : 3
/// title : "zh-Hant"
/// code : "zh-Hant"
/// description : null

Lang langFromJson(String str) => Lang.fromJson(json.decode(str));
String langToJson(Lang data) => json.encode(data.toJson());

class Lang {
  Lang({
    String? createdAt,
    num? id,
    String? title,
    String? code,
    dynamic description,
  }) {
    _createdAt = createdAt;
    _id = id;
    _title = title;
    _code = code;
    _description = description;
  }

  Lang.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _id = json['id'];
    _title = json['title'];
    _code = json['code'];
    _description = json['description'];
  }
  String? _createdAt;
  num? _id;
  String? _title;
  String? _code;
  dynamic _description;
  Lang copyWith({
    String? createdAt,
    num? id,
    String? title,
    String? code,
    dynamic description,
  }) =>
      Lang(
        createdAt: createdAt ?? _createdAt,
        id: id ?? _id,
        title: title ?? _title,
        code: code ?? _code,
        description: description ?? _description,
      );
  String? get createdAt => _createdAt;
  num? get id => _id;
  String? get title => _title;
  String? get code => _code;
  dynamic get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['id'] = _id;
    map['title'] = _title;
    map['code'] = _code;
    map['description'] = _description;
    return map;
  }
}

/// id : 1060
/// provider : "default"
/// merchantId : 1
/// name : "卓越教育.jpg"
/// hash : "d5ee69264ab48348ea712fc8eaf6b6221542e100929daf27443b45908948c130"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// size : "39463"
/// path : "d5ee69264ab48348ea712fc8eaf6b6221542e100929daf27443b45908948c130_卓越教育.jpg"
/// upload : {"etag":"cf6dc8c5e7f2cf0646a2d60c30ccf3c8","versionId":null}
/// createdAt : "2024-06-12T03:29:35.166Z"
/// url : "https://storage.dev.heyday-catering.com:20443/saas-article/public/d5ee69264ab48348ea712fc8eaf6b6221542e100929daf27443b45908948c130_%E5%8D%93%E8%B6%8A%E6%95%99%E8%82%B2.jpg"

Cover coverFromJson(String str) => Cover.fromJson(json.decode(str));
String coverToJson(Cover data) => json.encode(data.toJson());

class Cover {
  Cover({
    num? id,
    String? provider,
    num? merchantId,
    String? name,
    String? hash,
    String? ext,
    String? mime,
    String? size,
    String? path,
    Upload? upload,
    String? createdAt,
    String? url,
  }) {
    _id = id;
    _provider = provider;
    _merchantId = merchantId;
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _size = size;
    _path = path;
    _upload = upload;
    _createdAt = createdAt;
    _url = url;
  }

  Cover.fromJson(dynamic json) {
    _id = json['id'];
    _provider = json['provider'];
    _merchantId = json['merchantId'];
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _size = json['size'];
    _path = json['path'];
    _upload = json['upload'] != null ? Upload.fromJson(json['upload']) : null;
    _createdAt = json['createdAt'];
    _url = json['url'];
  }
  num? _id;
  String? _provider;
  num? _merchantId;
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  String? _size;
  String? _path;
  Upload? _upload;
  String? _createdAt;
  String? _url;
  Cover copyWith({
    num? id,
    String? provider,
    num? merchantId,
    String? name,
    String? hash,
    String? ext,
    String? mime,
    String? size,
    String? path,
    Upload? upload,
    String? createdAt,
    String? url,
  }) =>
      Cover(
        id: id ?? _id,
        provider: provider ?? _provider,
        merchantId: merchantId ?? _merchantId,
        name: name ?? _name,
        hash: hash ?? _hash,
        ext: ext ?? _ext,
        mime: mime ?? _mime,
        size: size ?? _size,
        path: path ?? _path,
        upload: upload ?? _upload,
        createdAt: createdAt ?? _createdAt,
        url: url ?? _url,
      );
  num? get id => _id;
  String? get provider => _provider;
  num? get merchantId => _merchantId;
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  String? get size => _size;
  String? get path => _path;
  Upload? get upload => _upload;
  String? get createdAt => _createdAt;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['provider'] = _provider;
    map['merchantId'] = _merchantId;
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['size'] = _size;
    map['path'] = _path;
    if (_upload != null) {
      map['upload'] = _upload?.toJson();
    }
    map['createdAt'] = _createdAt;
    map['url'] = _url;
    return map;
  }
}

/// etag : "cf6dc8c5e7f2cf0646a2d60c30ccf3c8"
/// versionId : null
