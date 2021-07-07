
import 'dart:convert';

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';

class PlacesResponse extends ListMappable{
  
   List<ModelPlace> data ;


  @override
  Mappable fromJsonList(List json) {
    print("List Is "+jsonEncode(json));
    data = json.map<ModelPlace>((v) => ModelPlace.fromJson(v)).toList();

    return this;
  }
  
  
  
}