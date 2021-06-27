

abstract class EgytologiaPlaceStates {}

class EgytologiaPlaceInitialState extends EgytologiaPlaceStates {}

class EgytologiaPlaceLoadingState extends EgytologiaPlaceStates {}

class EgytologiaPlaceSuccessState extends EgytologiaPlaceStates {}
class EgytologiaPlaceGETState extends EgytologiaPlaceStates {}

class EgytologiaPlaceErrorState extends EgytologiaPlaceStates {
  final String error;
  EgytologiaPlaceErrorState(this.error);
}
