

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/response/places_response.dart';

abstract class PharmaciesStates {}

class PharmaciesInitialState extends PharmaciesStates {}

class PharmaciesLoadingState extends PharmaciesStates {}

class PharmaciesSuccessState extends PharmaciesStates {


}


class PharmaciesErrorState extends PharmaciesStates {
  final String error;
  PharmaciesErrorState(this.error);
}
