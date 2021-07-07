import 'dart:convert';

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';

import '../model_pharmacy.dart';

class PharmacyResponse extends ListMappable {
  List<ModelPharmacy> data;

  @override
  Mappable fromJsonList(List json) {
    print("List Is " + jsonEncode(json));
    data = json.map<ModelPharmacy>((v) => ModelPharmacy.fromJson(v)).toList();

    return this;
  }
}
