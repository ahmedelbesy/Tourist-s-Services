

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/response/news_response.dart';
import 'package:egytologia/core/model/response/places_response.dart';
import 'package:egytologia/core/model/response/posts_response.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/main/cuibt/state.dart';
import 'package:egytologia/features/news/cuibt/state.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<PostsStates> {
  PostsCubit() : super(PostsInitialState());
  static PostsCubit get(context) => BlocProvider.of(context);
  PostsResponse postsResponse ;
  Future<void> getPostsdData() async {


    emit(PostsLoadingState());



    try {

      NetworkUtil.internal().get(PostsResponse(), POSTS, headers: true,


      ).then((value) {

        postsResponse = value;
        print(value.data.length);

        emit(PostsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(PostsErrorState(error.toString()));
      });
    }catch(e){

    }





    //   DioHelper.getData(url: PLACES, token:CacheHelper.getData(key: "token"))
    //       .then((value) {
    //     elshaimaModel = PostsModel.fromJson(value.data);
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
