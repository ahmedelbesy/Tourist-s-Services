

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/response/places_response.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class EgytologiaCubit extends Cubit<EgytologiaPlaceStates> {
  EgytologiaCubit() : super(EgytologiaPlaceInitialState());
  static EgytologiaCubit get(context) => BlocProvider.of(context);
PlacesResponse placesResponse;
  Future<void> getPlacedData() async {

    print("start");
    emit(EgytologiaPlaceLoadingState());
    print("second");


    try {
      print("third");
      NetworkUtil.internal().get(PlacesResponse(), PLACES, headers: true,


      ).then((value) {
        print("aaaaa");
        placesResponse = value;
        print(value.data.length);

        emit(EgytologiaPlaceSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(EgytologiaPlaceErrorState(error.toString()));
      });
    }catch(e){

    }





  //   DioHelper.getData(url: PLACES, token:CacheHelper.getData(key: "token"))
  //       .then((value) {
  //     elshaimaModel = EgytologiaModel.fromJson(value.data);
  //
  //     print(value.data);
  //
  //     emit(EgytologiaSsuccessState());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(EgytologiaChildErrorState(error.toString()));
  //   });
  }
}
