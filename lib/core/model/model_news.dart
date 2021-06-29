class ModelNews {
  String sId;
  String image;
  String title;
  String description;
  String createdAt;
  String updatedAt;
  int iV;

  ModelNews(
      {this.sId,
        this.image,
        this.title,
        this.description,
        this.createdAt,
        this.updatedAt,
        this.iV});

  ModelNews.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    image = json['image'];
    title = json['title'];
    description = json['description'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['image'] = this.image;
    data['title'] = this.title;
    data['description'] = this.description;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
