
import 'dart:convert';

import 'package:egytologia/core/model/model_hotel.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';

import '../model_posts.dart';

class HotelResponse extends ListMappable{

  List<ModelHotel> data ;


  @override
  Mappable fromJsonList(List json) {
    print("List Is "+jsonEncode(json));
    data = json.map<ModelHotel>((v) => ModelHotel.fromJson(v)).toList();

    return this;
  }



}