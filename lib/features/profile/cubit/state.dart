

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/response/places_response.dart';

abstract class ProfileStates {}

class ProfileInitialState extends ProfileStates {}

class ProfileLoadingState extends ProfileStates {}

class ProfileSuccessState extends ProfileStates {
  // PlacesResponse placesResponse;
  // ProfileSuccessState(this.placesResponse);



}
class ProfileGETState extends ProfileStates {}

class ProfileErrorState extends ProfileStates {
  final String error;
  ProfileErrorState(this.error);
}
