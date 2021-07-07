

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/response/places_response.dart';

abstract class RestaurantStates {}

class RestaurantInitialState extends RestaurantStates {}

class RestaurantLoadingState extends RestaurantStates {}

class RestaurantSuccessState extends RestaurantStates {


}


class RestaurantErrorState extends RestaurantStates {
  final String error;
  RestaurantErrorState(this.error);
}
