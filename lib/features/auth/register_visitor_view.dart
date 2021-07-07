
import 'package:egytologia/public/constance.dart';
import 'package:egytologia/common_components/Custom_dropdown_Button.dart';
import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:egytologia/common_components/custom_text_form_field.dart';
import 'package:flutter/material.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> _dropdownValues = [
    "Visitor",
    "Tour guide",
  ];
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
                top: height * 0.03,
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
                          right: 20, left: 20, bottom: 30, top: 50),
                      child: Column(
                        children: [

                          CustomTextFormField(
                            isPassword: false,
                            icon: Icon(Icons.email,color: primaryColor,),
                            hint: "E-MAIL",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          CustomTextFormField(
                            isPassword: false,
                            icon: Icon(Icons.person,color: primaryColor,),
                            hint: "User Name",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          CustomTextFormField(
                            isPassword: false,
                            icon: Icon(Icons.phone,color: primaryColor,),
                            hint: "Phone",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          CustomTextFormField(
                            isPassword: true,
                            icon: Icon(Icons.lock,color: primaryColor),
                            hint: "Password",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          CustomTextFormField(
                            isPassword: false,
                            icon: Icon(Icons.location_city,color: primaryColor),
                            hint: "Country",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextFormField(
                            isPassword: false,
                            icon: Icon(Icons.language_outlined,color: primaryColor,),
                            hint: "Language",
                            onSave: (value) {},
                            validator: (value) {},
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: width * 0.9,
                            height: height * 0.08,
                            child: CustomButton(
                              text: "Sign-Up",
                              color: Colors.white,
                              fontSize: 25,
                              onPressed: () {
                            //    Get.to(ControlView());
                              },
                            ),
                          ),
                          SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CustomText(
                              text: "Sign-In",
                              color: primaryColor,
                              fontSize: 23,
                              alignment: Alignment.center,
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
