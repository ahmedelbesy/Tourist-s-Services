

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/places_response.dart';

abstract class NewsStates {}

class NewsInitialState extends NewsStates {}

class NewsLoadingState extends NewsStates {}

class NewsSuccessState extends NewsStates {


}


class NewsErrorState extends NewsStates {
  final String error;
  NewsErrorState(this.error);
}
