import 'dart:async';

import 'package:egytologia/common_components/custom_text.dart';
import 'package:egytologia/routes/app_pages.dart';
import 'package:egytologia/routes/app_routes.dart';
import 'package:egytologia/shared/local/chach_helper.dart';
import 'package:flutter/material.dart';


import '../../public/constance.dart';



class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

@override
class _SplashState extends State<Splash> {
// ignore: must_call_super, non_constant_identifier_names
  var Token= CacheHelper.getData(key: "token");
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
     // ignore: non_constant_identifier_names

      if(Token !=null){
        NamedNavigatorImpl().push(Routes.HOME_ROUTER , clean:  false , replace:  false );
      }else{
        NamedNavigatorImpl().push(Routes.LOGIN_ROUTER , clean:  false , replace:  false );
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Image.asset("assets/icons/Logo.png",fit: BoxFit.cover,),

        CustomText(
          text: "Tourist's Services",
          alignment: Alignment.center,
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'brushscript',



        )

          ],
        ));
  }
}
