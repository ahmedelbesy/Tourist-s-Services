class Routes {
  static const SPLASH_ROUTER = "SPLASH_ROUTER";
  static const LOGIN_ROUTER = "LoginScreen";
  static const SIGNUP_ROUTER = "SIGNUP_ROUTER";
  static const INTRO = "INTRO";
  static const SEND_CODE = "SEND_CODE";
  static const RESET_PASSWORD = "RESET_PASSWORD";
  static const LOG_IN = "LOG_IN";
  static const HOME_ROUTER = "HOME_ROUTER";
  static const ENTER_EMAIL = "ENTER_EMAIL";
  static const POST_DETAILS_PAGE_ROUTER = "POST_DETAILS_PAGE_ROUTER";
  static const HASH_TAG_POSTS_PAGE_ROUTER = "HASH_TAG_POSTS_PAGE_ROUTER";
  static const ABOUT_APP_PAGE_ROUTER = "ABOUT_APP_PAGE_ROUTER";
  static const CONTACT_US_PAGE_ROUTER = "CONTACT_US_PAGE_ROUTER";
  static const EULA_PAGE_ROUTER = "EULA_PAGE_ROUTER";
  static const CHANGE_LANG_PAGE_ROUTER = "CHANGE_LANG_PAGE_ROUTER";
}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}
