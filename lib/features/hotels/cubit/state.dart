

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/response/places_response.dart';

abstract class HotelStates {}

class HotelInitialState extends HotelStates {}

class HotelLoadingState extends HotelStates {}

class HotelSuccessState extends HotelStates {


}


class HotelErrorState extends HotelStates {
  final String error;
  HotelErrorState(this.error);
}
