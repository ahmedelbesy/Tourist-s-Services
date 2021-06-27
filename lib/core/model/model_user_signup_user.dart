class Model_User_Sign_Up {
  String name;
  String email;
  String password;
  String phone;
  String language;
  String country;

  Model_User_Sign_Up(
      {this.name,
        this.email,
        this.password,
        this.phone,
        this.language,
        this.country});

  Model_User_Sign_Up.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    language = json['language'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['language'] = this.language;
    data['country'] = this.country;
    return data;
  }
}
