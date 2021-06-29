
import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:flutter/material.dart';


import '../../public/constance.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(height * 0.13),
        child: AppBar(

          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 25,left: 100),
            child: CustomText(text: "Contact us",color: Colors.white,fontSize: 20,fontweight: FontWeight.bold,),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,),onPressed: ()=>Navigator.pop(context ),

            ),
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
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10),
                  child: CustomText(text: "Tell about your assue",color: Colors.grey.shade400,fontSize: 20,),
                ),
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)
                ),
              ),
              SizedBox(height: 20,),
              CustomText(text: "Add screenshot ( not necessary )",color: primaryColor,fontSize: 20,fontweight: FontWeight.bold,),
              SizedBox(height: 20,),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: width*0.28,
                    child: Center(
                      child: IconButton(
                        icon: Image.asset("assets/icons/add.png"),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 120,
                    width: width*0.28,
                    child: Center(
                      child: IconButton(
                        icon: Image.asset("assets/icons/add.png"),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 120,
                    width: width*0.28,
                    child: Center(
                      child: IconButton(
                        icon: Image.asset("assets/icons/add.png"),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 65,
                    width: 140,
                    child: CustomButton(
                      colorbutton: Color(0xFF1AAE9F),
                      color:Colors.white ,
                      text: "Send",
                      fontSize: 18,
                      onPressed: (){},

                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 65,
                    width: 140,
                    child: CustomButton(
                      colorbutton: Colors.red,
                      color:Colors.white ,
                      text: "Cancel",
                      fontSize: 18,
                      onPressed: (){},

                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              CustomText(
                text: "want to call the tourist police ?",color: primaryColor,fontSize: 20,fontweight: FontWeight.bold,
              ),
              SizedBox(height: 20,),
              Container(
                height: 65,
                width: 250,
                child: CustomButton(
                  text:"Call" ,color: Colors.white,fontSize: 18,
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
