class Model_TourGuides_Signup {
  String name;
  String email;
  String password;
  String phone;
  String language;
  String license;

  Model_TourGuides_Signup(
      {this.name,
        this.email,
        this.password,
        this.phone,
        this.language,
        this.license});

  Model_TourGuides_Signup.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    language = json['language'];
    license = json['license'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['language'] = this.language;
    data['license'] = this.license;
    return data;
  }
}
