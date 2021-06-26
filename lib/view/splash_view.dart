import 'dart:async';
import 'package:egytologia/view/home_view.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constance.dart';
import 'auth/login_view.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

@override
class _SplashState extends State<Splash> {
// ignore: must_call_super

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
     Get.to(LoginScreen());

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
