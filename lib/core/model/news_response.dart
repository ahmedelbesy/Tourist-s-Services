
import 'dart:convert';

import 'package:egytologia/core/model/model_news.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/networking/remote/network_mappers.dart';

class NewsResponse extends ListMappable{

  List<ModelNews> data ;


  @override
  Mappable fromJsonList(List json) {
    print("List Is "+jsonEncode(json));
    data = json.map<ModelNews>((v) => ModelNews.fromJson(v)).toList();

    return this;
  }



}