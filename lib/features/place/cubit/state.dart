

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/places_response.dart';

abstract class EgytologiaPlaceStates {}

class EgytologiaPlaceInitialState extends EgytologiaPlaceStates {}

class EgytologiaPlaceLoadingState extends EgytologiaPlaceStates {}

class EgytologiaPlaceSuccessState extends EgytologiaPlaceStates {
  // PlacesResponse placesResponse;
  // EgytologiaPlaceSuccessState(this.placesResponse);



}
class EgytologiaPlaceGETState extends EgytologiaPlaceStates {}

class EgytologiaPlaceErrorState extends EgytologiaPlaceStates {
  final String error;
  EgytologiaPlaceErrorState(this.error);
}
