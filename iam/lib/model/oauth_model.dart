import 'dart:convert';
/// access_token : "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InBhc3Nwb3J0X2p3dCJ9.eyJtaWQiOiJnb29keSIsImNpZCI6ImFwaSIsImlhdCI6MTcxNTc2MTgwNCwiZXhwIjoxNzE2MzY2NjA0LCJhdWQiOltdLCJpc3MiOiJnb29keSIsInN1YiI6Imdvb2R5LmNsaWVudC5hcGkiLCJqdGkiOiI4NTU4In0.ejm6jnTCtJNGbF1cSSlzp8sXF9hm7a1pl_CEvkm1Tkgz3JjG4g68nj6HOzKNNj2zJiaJ_qRQdF6Zgp-8D1CzJPBwGbTro_reZAKJPBQk110vImBQoGNFbT4hZwrtGqGdJd4nDUDt5mDLId-CB_GgQ8ZBY15h0fHQE0kTqIqmndThyBYIwhN4wjNTNjqzAEoJThk6cQcVcWxGAsJkeGeSw3yBQ42G0BmWEroVkekgmoaQz2tZnt4YI9wJPv4UkTN0Z92gr34VcpSPjPeFvhx_qZy-lROsaNTcxUzYqSMZM55Y9N-Gg0VPp4ONwbXEuO7mHm4eP86NCFRNO11vQIkhWQ"
/// token_type : "Bearer"
/// expires_in : 604799

OauthModel oauthModelFromJson(String str) => OauthModel.fromJson(json.decode(str));
String oauthModelToJson(OauthModel data) => json.encode(data.toJson());
class OauthModel {
  OauthModel({
      String? accessToken, 
      String? tokenType, 
      num? expiresIn,}){
    _accessToken = accessToken;
    _tokenType = tokenType;
    _expiresIn = expiresIn;
}

  OauthModel.fromJson(dynamic json) {
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _expiresIn = json['expires_in'];
  }
  String? _accessToken;
  String? _tokenType;
  num? _expiresIn;
OauthModel copyWith({  String? accessToken,
  String? tokenType,
  num? expiresIn,
}) => OauthModel(  accessToken: accessToken ?? _accessToken,
  tokenType: tokenType ?? _tokenType,
  expiresIn: expiresIn ?? _expiresIn,
);
  String? get accessToken => _accessToken;
  String? get tokenType => _tokenType;
  num? get expiresIn => _expiresIn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = _accessToken;
    map['token_type'] = _tokenType;
    map['expires_in'] = _expiresIn;
    return map;
  }

}