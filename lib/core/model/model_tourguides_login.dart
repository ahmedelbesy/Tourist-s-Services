

class Model_TourGuides_Login {
  String email;
  String password;

  Model_TourGuides_Login({this.email, this.password});

  Model_TourGuides_Login.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
