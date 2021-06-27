import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/networking/end_points.dart';
import 'package:egytologia/core/networking/remote/network_util.dart';
import 'package:egytologia/features/auth/login_view/cubit/statas.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EGYTOLOGIALoginCubit extends Cubit<EGYTOLOGIALoginStates> {
  EGYTOLOGIALoginCubit() : super(EGYTOLOGIALoginInitialState());
  static EGYTOLOGIALoginCubit get(context) => BlocProvider.of(context);
  LoginResponse loginResponse;
  Future<void> userLogin({
    @required String email,
    @required String password,
  }) async {
    emit(EGYTOLOGIALoginLoadingState());
    
    NetworkUtil.internal().post(LoginResponse(), LOGIN, body: {
        'email': email,
        'password': password,
    // ignore: missing_return
    }).then((value){

            print(value.token);
     emit( EGYTOLOGIALoginSuccessState(value));

  }).catchError((error){
    print(error.toString());
    emit(EGYTOLOGIALoginErrorState(error.toString()));
  });



    //'
    // NetworkUtil.postData(url: LOGIN, data: {
    //   'username': username,
    //   'password': password,
    // }).then((value) {
    //   print(value.data);
    //   model_user_login = Model_User_Login.fromJson(value.data);
    //   emit(EGYTOLOGIALoginSuccessState(model_user_login));
    // }). catchError((error) {
    //   print("uuu");
    //   print(error.toString());
    //
    //   emit(EGYTOLOGIALoginErrorState(error.toString()));
    // });
  }
  IconData suffix = Icons.visibility_outlined;
  bool isPasswordShow = true;
  void changePasswordVisibility() {
    isPasswordShow = !isPasswordShow;
    suffix = isPasswordShow
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;

    emit(EGYTOLOGIAChangePasswordVisibilityState());
  }



}
