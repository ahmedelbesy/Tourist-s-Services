import 'package:egytologia/constance.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  final Function onSave;
  final Function validator;
  final Icon icon;
  final Icon suffixIcon;
  final TextEditingController Controller;
  final Color colorhint  ;
  final double fontSizehint;

  CustomTextFormField({ this.hint, this.onSave, this.validator,this.icon,this.Controller,this.colorhint=Colors.grey,this.suffixIcon,this.fontSizehint});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [

          TextFormField(
controller: Controller,
            onSaved: onSave,
            validator: validator,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide(color: primaryColor, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
                borderRadius: BorderRadius.circular(9),
              ),
              prefixIcon:icon ,
              hintText: hint,
              suffixIcon: suffixIcon,


              hintStyle: TextStyle(color:colorhint,fontSize: fontSizehint),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}