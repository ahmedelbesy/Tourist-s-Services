class ModelProfile {

  String avatar;
  String sId;
  String name;
  String email;
  String password;
  String phone;
  String language;
  String country;


  String createdAt;
  String updatedAt;
  int iV;

  ModelProfile(
      {
      this.avatar,
      this.sId,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.language,
      this.country,

      this.createdAt,
      this.updatedAt,
      this.iV});

  ModelProfile.fromJson(Map<dynamic, dynamic> json) {

    avatar = json['avatar'];
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    language = json['language'];
    country = json['country'];

    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();

    data['avatar'] = this.avatar;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['language'] = this.language;
    data['country'] = this.country;


    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}



