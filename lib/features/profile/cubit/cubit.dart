

import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/response/places_response.dart';
import 'package:egytologia/core/model/response/response_profile.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/features/profile/cubit/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitialState());
  static ProfileCubit get(context) => BlocProvider.of(context);
  ProfileResponse profileResponse;
  Future<void> getProfiledData() async {

    print("start");
    emit(ProfileLoadingState());
    print("second");


    try {
      print("third");
      NetworkUtil.internal().get(ProfileResponse(), PROFILE, headers: true,


      ).then((value) {
        print("aaaaa");
        profileResponse = value  ;
        print(value.data.length);

        emit(ProfileSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(ProfileErrorState(error.toString()));
      });
    }catch(e){

    }





    //   DioHelper.getData(url: PLACES, token:CacheHelper.getData(key: "token"))
    //       .then((value) {
    //     elshaimaModel = ProfileModel.fromJson(value.data);
    //
    //     print(value.data);
    //
    //     emit(ProfileSsuccessState());
    //   }).catchError((error) {
    //     print(error.toString());
    //     emit(ProfileChildErrorState(error.toString()));
    //   });
  }
}
