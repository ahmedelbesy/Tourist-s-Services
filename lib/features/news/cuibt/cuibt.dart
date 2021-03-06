

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/response/news_response.dart';
import 'package:egytologia/core/model/response/places_response.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/news/cuibt/state.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);
  NewsResponse newsResponse;
  Future<void> getNewsdData() async {


    emit(NewsLoadingState());



    try {

      NetworkUtil.internal().get(NewsResponse(), NEWS, headers: true,


      ).then((value) {

        newsResponse = value;
        print(value.data.length);

        emit(NewsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsErrorState(error.toString()));
      });
    }catch(e){

    }





    //   DioHelper.getData(url: PLACES, token:CacheHelper.getData(key: "token"))
    //       .then((value) {
    //     elshaimaModel = NewsModel.fromJson(value.data);
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
