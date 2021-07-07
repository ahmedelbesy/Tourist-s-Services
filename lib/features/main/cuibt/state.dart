

import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/response/places_response.dart';

abstract class PostsStates {}

class PostsInitialState extends PostsStates {}

class PostsLoadingState extends PostsStates {}

class PostsSuccessState extends PostsStates {


}


class PostsErrorState extends PostsStates {
  final String error;
  PostsErrorState(this.error);
}
