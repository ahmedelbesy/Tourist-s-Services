import 'package:bloc/bloc.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/place/cubit/state.dart';
import 'package:egytologia/shared/local/chach_helper.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class EgytologiaCubit extends Cubit<EgytologiaPlaceStates> {
  EgytologiaCubit() : super(EgytologiaPlaceInitialState());
  static EgytologiaCubit get(context) => BlocProvider.of(context);

  ModelPlace modelPlace;
  void getPlacedData() {
    emit(EgytologiaPlaceLoadingState());

    NetworkUtil.internal().get(ModelPlace(), PLACES, headers:true


  ).then((value){

print(value.name.toString());


emit(EgytologiaPlaceSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(EgytologiaPlaceErrorState(error.toString()));
    });





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
