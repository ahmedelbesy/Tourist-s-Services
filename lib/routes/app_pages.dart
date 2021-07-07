class Routes {
  static const SPLASH_ROUTER = "SPLASH_ROUTER";
  static const LOGIN_ROUTER = "LoginScreen";

  static const DITALIS_PLACE = "DITILS_PLACE";
  static const DITALIS_NEW = "SEND_CODE";

  static const LOG_IN = "LOG_IN";
  static const HOME_ROUTER = "HOME_ROUTER";
  static const PHARMACY_ROUTER = "pharmacies";
  static const Posts_ROUTER = "Posts";
  static const Hotel_ROUTER = "Hotel";
  static const Hotel_DITALS_ROUTER = "ditalsHotel";

}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}
