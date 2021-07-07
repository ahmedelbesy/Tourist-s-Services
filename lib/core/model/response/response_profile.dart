
import 'dart:convert';

import 'package:egytologia/core/model/model_hotel.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';

import '../model_posts.dart';
import '../model_profile.dart';

class ProfileResponse extends ListMappable{

  List<ModelProfile> data ;


  @override
  Mappable fromJsonList(List json) {
    print("List Is "+jsonEncode(json));
    data = json.map<ModelProfile>((v) => ModelProfile.fromJson(v)).toList();

    return this;
  }



}