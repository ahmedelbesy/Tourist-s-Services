// import 'package:flutter_postman_application/src/app.dart';


import 'package:egytologia/features/auth/login_view/login_view.dart';
import 'package:egytologia/features/hotels/details_hotels_view.dart';
import 'package:egytologia/features/hotels/hotels_view.dart';
import 'package:egytologia/features/main/home_layout.dart';

import 'package:egytologia/features/news/details_news_view.dart';
import 'package:egytologia/features/pharmacies/pharmacies_view.dart';
import 'package:egytologia/features/place/detalis_place.dart';
import 'package:egytologia/features/posts/posts_view.dart';
import 'package:egytologia/features/splash/splash_view.dart';
import 'package:flutter/material.dart';


import 'app_pages.dart';


class NamedNavigatorImpl implements NamedNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
  new GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
     case Routes.SPLASH_ROUTER :return MaterialPageRoute(builder: (_) => Splash());
     case Routes.LOGIN_ROUTER :return MaterialPageRoute(builder: (_) => LoginScreen());
     case Routes.HOME_ROUTER :return MaterialPageRoute(builder: (_) => HomeLayout());
     case Routes.DITALIS_NEW :return MaterialPageRoute(builder: (_) => DetailsNewsScreen(modelnews: settings.arguments,));
     case Routes.DITALIS_PLACE :return MaterialPageRoute(builder: (_) => DetailsPlaceScreen(modelPlace: settings.arguments,));
     case Routes.Hotel_DITALS_ROUTER :return MaterialPageRoute(builder: (_) => DetailsHotels(modelHotel: settings.arguments,));
     case Routes.Hotel_ROUTER :return MaterialPageRoute(builder: (_) => HotelsScreen());
     case Routes.Posts_ROUTER :return MaterialPageRoute(builder: (_) => PostScreen());
     case Routes.PHARMACY_ROUTER :return MaterialPageRoute(builder: (_) => PharmaciesScreen());

    }

//    return MaterialPageRoute(builder: (_) => Container());
  }

  @override
  void pop({dynamic result}) {
    if (navigatorState.currentState.canPop())
      navigatorState.currentState.pop(result);
  }

  @override
  Future push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean)
      return navigatorState.currentState.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);

    if (replace)
      return navigatorState.currentState
          .pushReplacementNamed(routeName, arguments: arguments);

    return navigatorState.currentState
        .pushNamed(routeName, arguments: arguments);
  }
}
