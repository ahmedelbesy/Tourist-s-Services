import 'package:egytologia/constance.dart';
import 'package:egytologia/view/auth/register_tour_guide_view.dart';
import 'package:egytologia/view/auth/register_visitor_view.dart';
import 'package:egytologia/view/widgets/custom_button.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:egytologia/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../control_view.dart';
import '../home_view.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.09,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.1,
                      width: width * 0.7,
                      child: Image.asset("assets/icons/logo2.png"),
                    ),
                    CustomText(
                      text: "Tourist's Services",
                      alignment: Alignment.center,
                      color: primaryColor,
                      fontSize: 30,
                      fontFamily: 'brushscript',

                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 20, top: 50),
                      child: Column(
                        children: [
                          CustomTextFormField(
                            icon: Icon(
                              Icons.email,
                              color: primaryColor,
                            ),
                            hint: "E-MAIL",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          CustomTextFormField(
                            icon: Icon(
                              Icons.lock,
                              color: primaryColor,
                            ),
                            hint: "Password",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          CustomText(
                            text: "Forgot Password?",
                            fontSize: 14,
                            alignment: Alignment.topRight,
                            color: primaryColor,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: width * 0.9,
                            height: height * 0.07,
                            child: CustomButton(
                              text: "Sign-In",
                              fontSize: 23,
                              color: Colors.white,
                              onPressed: () {
                                Get.to(ControlView());
                              },
                            ),
                          ),
                          SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Get.to(RegisterScreen());
                            },
                            child: CustomText(
                              text: "Sign-up",
                              color: primaryColor,
                              alignment: Alignment.center,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Get.to(Register_TourGuide_Screen());
                            },
                            child: CustomText(
                              text: "Sign-up As Tour Guide ?",
                              color: primaryColor,
                              alignment: Alignment.center,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
