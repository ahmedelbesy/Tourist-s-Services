
import 'package:bloc/bloc.dart';
import 'package:egytologia/features/splash/splash_view.dart';
import 'package:egytologia/routes/app_pages.dart';
import 'package:egytologia/shared/local/chach_helper.dart';

import 'package:flutter/material.dart';
import 'core/networking/remote/network_util.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'shared/bloc_observer.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  NetworkUtil.internal();

  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.SPLASH_ROUTER,
      onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
      navigatorKey: NamedNavigatorImpl.navigatorState,

      theme: ThemeData(
  fontFamily: 'Segoe.UI'
),

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}
