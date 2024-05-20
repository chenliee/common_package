/// sn : "04595f75-62c3-4878-943b-50173f0345e2"
/// deviceAccessToken : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXZpY2UiOnsic24iOiIwNDU5NWY3NS02MmMzLTQ4NzgtOTQzYi01MDE3M2YwMzQ1ZTIiLCJ0b2tlbiI6IjY2NjY2NjY2IiwicGFja2FnZSI6Ijg1MyIsIm1lcmNoYW50IjoiZ29vZHkiLCJjaGFubmVsIjoic21zIn0sImdyYW50X3R5cGUiOiJkZXZpY2VfY3JlZGVudGlhbHMiLCJpYXQiOjE2OTk0MjgzNjQsImV4cCI6MTY5OTQzMDE2NH0.QKoQ6a-Ct45xmi0LoSfntGwGvuFuLGfReDyMy5eODhtiia9c9WGrczI1hM9e9IC2JYyX4WYXfcPxhLkUu4zqJc62lJAnMWm6sVO81TY373W5t_UU56xS1QZKxjIDRGW3dwIpoA3xDI0ncTNJw2n83zw3gwxZW-liZ7WcNfvv0cKfqTiTikwXvQb4neusDZendT3ubQ0saqGjYXmGxqeT7MdipO_qcDibkubAFDs9f9rOhkgrJ3qTsewxq0aaHdSd87aHro_Wdkt0GCsvfljBzGw2yW-50D1BIt-uoV_n2TRqMjHPb2hDQt1j02nBe4DSJFTGoTjDzZF8USdrYFmxHA"

class BindModel {
  BindModel({
      String? sn, 
      String? deviceAccessToken,}){
    _sn = sn;
    _deviceAccessToken = deviceAccessToken;
}

  BindModel.fromJson(dynamic json) {
    _sn = json['sn'];
    _deviceAccessToken = json['deviceAccessToken'];
  }
  String? _sn;
  String? _deviceAccessToken;
BindModel copyWith({  String? sn,
  String? deviceAccessToken,
}) => BindModel(  sn: sn ?? _sn,
  deviceAccessToken: deviceAccessToken ?? _deviceAccessToken,
);
  String? get sn => _sn;
  String? get deviceAccessToken => _deviceAccessToken;

  @override
  String toString() {
    return 'BindModel{_sn: $_sn, _deviceAccessToken: $_deviceAccessToken}';
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sn'] = _sn;
    map['deviceAccessToken'] = _deviceAccessToken;
    return map;
  }

}