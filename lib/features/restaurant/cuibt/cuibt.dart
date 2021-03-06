

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/response/news_response.dart';
import 'package:egytologia/core/model/response/places_response.dart';
import 'package:egytologia/core/model/response/restaurant_response.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/news/cuibt/state.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/features/restaurant/cuibt/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantCubit extends Cubit<RestaurantStates> {
 RestaurantCubit() : super(RestaurantInitialState());
  static RestaurantCubit get(context) => BlocProvider.of(context);
 RestaurantResponse restaurantResponse;
  Future<void> getRestaurantdData() async {

    print("start");
    emit(RestaurantLoadingState());
    print("second");


    try {
      print("third");
      NetworkUtil.internal().get(RestaurantResponse(), Restaurants, headers: true,


      ).then((value) {
        print("aaaaa");
        restaurantResponse = value ;
        print(value.data.length);

        emit(RestaurantSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(RestaurantErrorState(error.toString()));
      });
    }catch(e){

    }





    //   DioHelper.getData(url: PLACES, token:CacheHelper.getData(key: "token"))
    //       .then((value) {
    //     elshaimaModel =RestaurantModel.fromJson(value.data);
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
