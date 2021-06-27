// import 'package:flutter_postman_application/src/app.dart';


import 'package:egytologia/features/auth/login_view/login_view.dart';
import 'package:egytologia/features/main/home_view.dart';
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
     case Routes.HOME_ROUTER :return MaterialPageRoute(builder: (_) => HomeView());
      // case Routes.SIGNUP_ROUTER :return MaterialPageRoute(builder: (_) => SignUpPage());
      // case Routes.RESET_PASSWORD :return MaterialPageRoute(builder: (_) => ResetPasswordPage());
      // case Routes.SEND_CODE :return MaterialPageRoute(builder: (_) => VerificationCodePage(stateOfCode: settings.arguments,));
      // case Routes.ENTER_EMAIL :return MaterialPageRoute(builder: (_) => EnterEmail());
      // case Routes.HOME_ROUTER :return MaterialPageRoute(builder: (_) => Home());
      // case Routes.POST_DETAILS_PAGE_ROUTER :return MaterialPageRoute(builder: (_) => PostDetails(postId: settings.arguments,));
      // case Routes.HASH_TAG_POSTS_PAGE_ROUTER :return MaterialPageRoute(builder: (_) => HashTagPosts(hashtag: settings.arguments,));
      // case Routes.ABOUT_APP_PAGE_ROUTER :return MaterialPageRoute(builder: (_) => AboutAppPage());
      // case Routes.CONTACT_US_PAGE_ROUTER :return MaterialPageRoute(builder: (_) => ContactUsPage());
      // case Routes.CHANGE_LANG_PAGE_ROUTER :return MaterialPageRoute(builder: (_) => ChangeLanguagePage());
      // case Routes.EULA_PAGE_ROUTER :return MaterialPageRoute(builder: (_) => EULAPage());
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
