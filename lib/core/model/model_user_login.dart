import 'package:egytologia/core/networking/remote/network_mappers.dart';

class LoginResponse extends BaseMappable {
  bool user;
  String token;

  LoginResponse({this.user, this.token});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['token'] = this.token;
    return data;
  }

  @override
  Mappable fromJson(Map<String, dynamic> json) {

    user = json['user'];
    token = json['token'];
    return LoginResponse(token: token,user: user);
  }
}

