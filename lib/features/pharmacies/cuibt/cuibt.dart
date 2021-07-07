

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/response/news_response.dart';
import 'package:egytologia/core/model/response/pharmacy_response.dart';
import 'package:egytologia/core/model/response/places_response.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/news/cuibt/state.dart';
import 'package:egytologia/features/pharmacies/cuibt/state.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class PharmaciesCubit extends Cubit<PharmaciesStates> {
  PharmaciesCubit() : super(PharmaciesInitialState());
  static PharmaciesCubit get(context) => BlocProvider.of(context);
  PharmacyResponse pharmacyResponse;
  Future<void> getPharmaciesdData() async {

    print("start");
    emit(PharmaciesLoadingState());
    print("second");


    try {
      print("third");
      NetworkUtil.internal().get(PharmacyResponse(), PHARMACIES, headers: true,


      ).then((value) {
        print("aaaaa");
        pharmacyResponse = value;
        print(value.data.length);

        emit(PharmaciesSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(PharmaciesErrorState(error.toString()));
      });
    }catch(e){

    }





    //   DioHelper.getData(url: PLACES, token:CacheHelper.getData(key: "token"))
    //       .then((value) {
    //     elshaimaModel = PharmaciesModel.fromJson(value.data);
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
