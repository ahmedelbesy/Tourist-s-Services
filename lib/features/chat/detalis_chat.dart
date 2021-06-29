

import 'package:egytologia/common_components/custom_text.dart';
import 'package:egytologia/common_components/custom_text_form_field.dart';
import 'package:flutter/material.dart';


import '../../public/constance.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.13),
        child: AppBar(
         // automaticallyImplyLeading: false,
title:  Padding(
  padding: const EdgeInsets.only(top: 20,right: 30),
  child:   Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 25,
                child: Image.asset(
                  "assets/images/avatar.png",
                  fit: BoxFit.cover,
                ),
              ),
              CustomText(
                text: "Dahab Group",
                fontSize: 25,
                color: Colors.white,
                fontweight: FontWeight.bold,
                alignment: Alignment.center,
              ),
            ],
          ),
),
          backgroundColor: primaryColor,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 0,
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
        ),
      ),

      body:Column(
mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
            child: CustomTextFormField(
              isPassword: false,
              suffixIcon:Icon(Icons.send,color: primaryColor,),
              hint: "Type a message",
              fontSizehint: 20,
            ),
          )
        ],
      ),

    );
  }
}
