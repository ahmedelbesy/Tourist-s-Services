

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/response/news_response.dart';
import 'package:egytologia/core/model/response/places_response.dart';
import 'package:egytologia/core/model/response/posts_response.dart';
import 'package:egytologia/core/model/response/respons_hotel.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/hotels/cubit/state.dart';
import 'package:egytologia/features/main/cuibt/state.dart';
import 'package:egytologia/features/news/cuibt/state.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class HotelsCubit extends Cubit< HotelStates> {
  HotelsCubit() : super(HotelInitialState());
  static HotelsCubit get(context) => BlocProvider.of(context);
  HotelResponse hotelResponse ;
  Future<void> getHothedData() async {


    emit(HotelLoadingState());



    try {

      NetworkUtil.internal().get(HotelResponse(), HOTELS, headers: true,


      ).then((value) {

        hotelResponse = value;
        print(value.data.length);

        emit(HotelSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(HotelErrorState(error.toString()));
      });
    }catch(e){

    }





    //   DioHelper.getData(url: PLACES, token:CacheHelper.getData(key: "token"))
    //       .then((value) {
    //     elshaimaModel = HotheelsModel.fromJson(value.data);
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
