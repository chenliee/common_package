class CaptchaModel {
  String? id;
  String? src;

  CaptchaModel({this.id, this.src});

  CaptchaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    src = json['src'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['src'] = src;
    return data;
  }
}
