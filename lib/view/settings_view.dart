
import 'package:egytologia/view/widgets/custom_button.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:egytologia/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constance.dart';

class SettingScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.12),
        child: AppBar(

          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 20,left: 100),
            child: CustomText(text: "Settings",color: Colors.white,fontSize: 25,fontweight: FontWeight.bold,),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,),onPressed: ()=>Get.back(),),
          backgroundColor: primaryColor,
          elevation: 0,
          centerTitle: true,
          titleSpacing: 0,
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 20,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Account",color: primaryColor,fontSize: 20,fontweight: FontWeight.bold,),
              SizedBox(height: 10,),

              CustomTextFormField(
                hint: "Change your country",
                colorhint: primaryColor,
                suffixIcon: Icon(Icons.arrow_forward_ios,color: primaryColor,),
                fontSizehint: 20,

              ),
              SizedBox(height: 10,),
              CustomTextFormField(
                hint: "Change language ",
                colorhint: primaryColor,
                suffixIcon: Icon(Icons.arrow_forward_ios,color: primaryColor,),
                fontSizehint: 20,
              ),
              SizedBox(height: 10,),
              CustomTextFormField(
                hint: "Change User Name",
                colorhint: primaryColor,
                suffixIcon: Icon(Icons.arrow_forward_ios,color: primaryColor,),
                fontSizehint: 20,
              ),
              SizedBox(height: 10,),
              CustomTextFormField(
                hint: "Change password",
                colorhint: primaryColor,
                suffixIcon: Icon(Icons.arrow_forward_ios,color: primaryColor,),
                fontSizehint: 20,
              ),
              SizedBox(height: 10,),
              CustomTextFormField(
                hint: "Change phone number",
                colorhint: primaryColor,
                suffixIcon: Icon(Icons.arrow_forward_ios,color: primaryColor,),
                fontSizehint: 20,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Notification",color: primaryColor,fontweight: FontWeight.bold,fontSize: 20,),
                  IconButton(icon:Image.asset("assets/icons/group.png",fit: BoxFit.cover,), onPressed: (){}),

                ],
              ),
              SizedBox(height: 20,),
              Container(
                color: primaryColor,
                height: 2,
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Icon(Icons.person_add_alt,color: primaryColor,),
                  SizedBox(width: 15,),
                  CustomText(text: "Invite a Friend",color: primaryColor,fontSize: 20,fontweight: FontWeight.bold,),
                ],
              ),
              SizedBox(height: 20,),

              Container(
                width: 250,
                height: 60,
                child: CustomButton(
                  text: "Save",fontSize: 18,color: Colors.white,
                  onPressed: (){},

                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
