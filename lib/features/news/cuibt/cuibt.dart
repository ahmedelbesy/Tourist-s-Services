

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/news_response.dart';
import 'package:egytologia/core/model/places_response.dart';
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

    print("start");
    emit(NewsLoadingState());
    print("second");


    try {
      print("third");
      NetworkUtil.internal().get(NewsResponse(), NEWS, headers: true,


      ).then((value) {
        print("aaaaa");
        newsResponse = value;
        print(value.data.length);

        emit(NewsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewsErrorState(error.toString()));
      });
    }catch(e){
      print("zeby${e.toString()}");
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
