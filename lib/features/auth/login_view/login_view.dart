import 'package:conditional_builder/conditional_builder.dart';
import 'package:egytologia/features/auth/login_view/cubit/cubit.dart';
import 'package:egytologia/features/auth/login_view/cubit/statas.dart';
import 'package:egytologia/public/constance.dart';


import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:egytologia/common_components/custom_text_form_field.dart';

import 'package:egytologia/routes/app_pages.dart';
import 'package:egytologia/shared/local/chach_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:egytologia/routes/app_routes.dart';
import '../register_tour_guide_view.dart';
import '../register_visitor_view.dart';


// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (BuildContext context) => EGYTOLOGIALoginCubit(),
        child: BlocConsumer<EGYTOLOGIALoginCubit,EGYTOLOGIALoginStates>(
          listener:(context, state){
            if(state is EGYTOLOGIALoginSuccessState){
              if(state.loginResponse.user== true){
                CacheHelper.saveData(
                    key: "token", value: state.loginResponse.token).then((value) {
                  NamedNavigatorImpl().push(Routes.HOME_ROUTER , clean:  false , replace:  false );
                  Fluttertoast.showToast(
                      msg: "Login Success",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);
                });
              }else{
                return Fluttertoast.showToast(
                    msg:"Login Error",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
            }
          } ,
          builder: (context, state)=> SafeArea(
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
                                Controller: emailController,
                                onSave: (value) {},
                                isPassword: false,
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Invalid Email';
                                  }
                                },
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),

                              CustomTextFormField(
                                // onpressedPrefix: () {
                                //   EGYTOLOGIALoginCubit.get(context)
                                //       .changePasswordVisibility();
                                // },

                              //  suffixIcon: EGYTOLOGIALoginCubit.get(context).suffix,
                                isPassword:EGYTOLOGIALoginCubit.get(context).isPasswordShow,
                                icon: Icon(
                                  Icons.lock,
                                  color: primaryColor,
                                ),
                                Controller: passwordController,
                                hint: "Password",
                                onSave: (value) {},
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Invalid Password';
                                  }
                                },
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
                              ConditionalBuilder(
                                condition: state is! EGYTOLOGIALoginLoadingState,
                                fallback: (context) =>
                                    Center(child: CircularProgressIndicator()),

                                builder: (context) =>Container(
                                  width: width * 0.9,
                                  height: height * 0.07,
                                  child: CustomButton(
                                    text: "Sign-In",
                                    fontSize: 23,
                                    color: Colors.white,
                                    onPressed: () {
                                      if(_formKey.currentState.validate()){
                                        EGYTOLOGIALoginCubit.get(context).userLogin(email: emailController.text, password: passwordController.text);
                                      }


                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>RegisterScreen()));

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
                                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Register_TourGuide_Screen()));

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

        ),
      ),
    );
  }
}
