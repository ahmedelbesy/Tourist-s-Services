
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/model_user_login.dart';
import 'package:egytologia/core/model/model_user_login.dart';

abstract class EGYTOLOGIALoginStates{}

class EGYTOLOGIALoginInitialState extends EGYTOLOGIALoginStates{}
class EGYTOLOGIALoginLoadingState extends EGYTOLOGIALoginStates{}



class EGYTOLOGIALoginSuccessState extends EGYTOLOGIALoginStates{

  final LoginResponse loginResponse;
  EGYTOLOGIALoginSuccessState(this.loginResponse);
}
class EGYTOLOGIALoginErrorState extends EGYTOLOGIALoginStates{
  final String error;
  EGYTOLOGIALoginErrorState(this.error);
}

class EGYTOLOGIAChangePasswordVisibilityState extends EGYTOLOGIALoginStates{}


class EGYTOLOGIAUpdateTokenState extends EGYTOLOGIALoginStates{}
class EGYTOLOGIAUpdateTokenSuccessState extends EGYTOLOGIALoginStates{}
class EGYTOLOGIAUpdateTokenErrorState extends EGYTOLOGIALoginStates{
  final String errorUpdateToken;
  EGYTOLOGIAUpdateTokenErrorState(this.errorUpdateToken);
}