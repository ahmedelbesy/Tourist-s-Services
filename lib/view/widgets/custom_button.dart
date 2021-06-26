import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color colorbutton;
  final double fontSize;
  CustomButton({this.text,this.onPressed,this.color,this.fontSize,this.colorbutton=primaryColor});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21)),
    //    padding: EdgeInsets.all(4),
        onPressed: onPressed,
        color: colorbutton,
        child: CustomText(
          text:text,
          fontweight: FontWeight.bold,
          alignment: Alignment.center,

          fontSize: fontSize,
          color: color,
        ));
  }
}