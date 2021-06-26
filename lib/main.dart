import 'package:egytologia/view/control_view.dart';
import 'package:egytologia/view/splash_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helper/binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
theme: ThemeData(
  fontFamily: 'Segoe.UI'
),
      initialBinding: Binding(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}
