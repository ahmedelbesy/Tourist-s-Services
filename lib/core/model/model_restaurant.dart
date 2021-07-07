class ModelRestaurant {
  String location;
  String sId;
  String image;
  String name;
  List<Availability> availability;
  String description;
  String createdAt;
  String updatedAt;
  int iV;

  ModelRestaurant(
      {this.location,
        this.sId,
        this.image,
        this.name,
        this.availability,
        this.description,
        this.createdAt,
        this.updatedAt,
        this.iV});

  ModelRestaurant.fromJson(Map<String, dynamic> json) {
    location = json['location'];
    sId = json['_id'];
    image = json['image'];
    name = json['name'];
    if (json['availability'] != null) {
      availability = new List<Availability>();
      json['availability'].forEach((v) {
        availability.add(new Availability.fromJson(v));
      });
    }
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
    if (this.availability != null) {
      data['availability'] = this.availability.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Availability {
  String sId;
  String option;

  Availability({this.sId, this.option});

  Availability.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    option = json['option'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['option'] = this.option;
    return data;
  }
}
