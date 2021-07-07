
import 'dart:convert';

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_restaurant.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';

class RestaurantResponse extends ListMappable{

  List<ModelRestaurant> data ;


  @override
  Mappable fromJsonList(List json) {
    print("List Is "+jsonEncode(json));
    data = json.map<ModelRestaurant>((v) => ModelRestaurant.fromJson(v)).toList();

    return this;
  }



}