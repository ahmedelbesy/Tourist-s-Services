class ModelPharmacy {
  String location;
  String sId;
  String image;
  String name;
  String description;
  String contacts;
  String createdAt;
  String updatedAt;
  int iV;

  ModelPharmacy(
      {this.location,
        this.sId,
        this.image,
        this.name,
        this.description,
        this.contacts,
        this.createdAt,
        this.updatedAt,
        this.iV});

  ModelPharmacy.fromJson(Map<String, dynamic> json) {
    location = json['location'];
    sId = json['_id'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    contacts = json['contacts'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['location'] = this.location;
    data['_id'] = this.sId;
    data['image'] = this.image;
    data['name'] = this.name;
    data['description'] = this.description;
    data['contacts'] = this.contacts;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
