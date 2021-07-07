class PostsModel {
  int likes;
  int comments;
  String sId;
  String image;
  String content;
  Owner owner;
  String creator;
  String createdAt;
  String updatedAt;
  int iV;

  PostsModel(
      {this.likes,
        this.comments,
        this.sId,
        this.image,
        this.content,
        this.owner,
        this.creator,
        this.createdAt,
        this.updatedAt,
        this.iV});

  PostsModel.fromJson(Map<String, dynamic> json) {
    likes = json['likes'];
    comments = json['comments'];
    sId = json['_id'];
    image = json['image'];
    content = json['content'];
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    creator = json['creator'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['_id'] = this.sId;
    data['image'] = this.image;
    data['content'] = this.content;
    if (this.owner != null) {
      data['owner'] = this.owner.toJson();
    }
    data['creator'] = this.creator;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Owner {
  String avatar;
  String sId;
  String name;
  String email;
  String phone;
  String language;
  String license;
  String password;
  List<LikedPosts> likedPosts;
  String createdAt;
  String updatedAt;
  int iV;

  Owner(
      {this.avatar,
        this.sId,
        this.name,
        this.email,
        this.phone,
        this.language,
        this.license,
        this.password,
        this.likedPosts,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Owner.fromJson(Map<String, dynamic> json) {
    avatar = json['avatar'];
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    language = json['language'];
    license = json['license'];
    password = json['password'];
    if (json['likedPosts'] != null) {
      likedPosts = new List<LikedPosts>();
      json['likedPosts'].forEach((v) {
        likedPosts.add(new LikedPosts.fromJson(v));
      });
    }

    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatar'] = this.avatar;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['language'] = this.language;
    data['license'] = this.license;
    data['password'] = this.password;
    if (this.likedPosts != null) {
      data['likedPosts'] = this.likedPosts.map((v) => v.toJson()).toList();
    }

    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class LikedPosts {
  String sId;
  String likedPost;

  LikedPosts({this.sId, this.likedPost});

  LikedPosts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    likedPost = json['likedPost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['likedPost'] = this.likedPost;
    return data;
  }
}
