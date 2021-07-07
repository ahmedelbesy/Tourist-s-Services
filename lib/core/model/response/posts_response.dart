
import 'dart:convert';

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';

import '../model_posts.dart';

class PostsResponse extends ListMappable{

  List<PostsModel> data ;


  @override
  Mappable fromJsonList(List json) {
    print("List Is "+jsonEncode(json));
    data = json.map<PostsModel>((v) => PostsModel.fromJson(v)).toList();

    return this;
  }



}