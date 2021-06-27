import 'package:egytologia/core/networking/remote/network_mappers.dart';

class ModelPlace extends BaseMappable{
  String location;
  String sId;
  String image;
  String name;
  String description;
  String createdAt;
  String updatedAt;
  int iV;

  ModelPlace(
      {this.location,
        this.sId,
        this.image,
        this.name,
        this.description,
        this.createdAt,
        this.updatedAt,
        this.iV});

  ModelPlace.fromJson(Map<String, dynamic> json) {
    location = json['location'];
    sId = json['_id'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
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
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }

  @override
  Mappable fromJson(Map<String, dynamic> json) {
    location = json['location'];
    sId = json['_id'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    return ModelPlace(location: location,sId: sId,image: image,name: name,description: description,createdAt: createdAt,updatedAt: updatedAt,iV: iV);
  }
}
