import 'package:egytologia/view/detalis_chat.dart';
import 'package:egytologia/view/widgets/Custom_dropdown_Button.dart';
import 'package:egytologia/view/widgets/custom_button.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constance.dart';



class Chats_Tourguide extends StatefulWidget {
  @override
  _Chats_TourguideState createState() => _Chats_TourguideState();
}

class _Chats_TourguideState extends State<Chats_Tourguide> {
  final List<String> _dropdownValues = [
    "Visitor",
    "Tour guide",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.14),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
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
                  text: "Chats",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(

          children: [
            _searchTextFormField(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
              child: Container(

                height: 50,
                width: double.infinity,
                child: CustomButton(
                  color: Colors.white,
                  text: "Create Group",

                  fontSize: 20,
                  colorbutton: primaryColor,
                  onPressed: (){
                    return showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Custom_Dialog();
                        });
                  },
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.only(top: 80),
              child: ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),


                  padding: EdgeInsets.only(top: 50),

                  itemCount: 3,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                    onTap: ()=>Get.to(ChatsView()),

                        child: Container(
                          child: Row(

                            children: [
                              Image.asset(
                                "assets/images/avatar.png",
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                              Column(

                                children: [
                                  CustomText(
                                    text: "Ahmed Mohamed",
                                    fontSize: 20,
                                    color: primaryColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 40),
                                    child: CustomText(

                                      text:"You:  ok  20  Mar",
                                      color: primaryColor,
                                      fontweight: FontWeight.w200,

                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 80,),
                              Image.asset(
                                "assets/images/avatar.png",
                                fit: BoxFit.cover,

                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  }

              ),
            )




          ],
        ),
      ),
    );
  }

  Widget _searchTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width:1.5),
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 35,
                color: primaryColor,
              )),
        ),
      ),
    );
  }

  Dialog Custom_Dialog() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)), //this right here
      child: Container(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CustomText(
                text: "Creat Group",
                alignment: Alignment.center,
                fontSize: 20,
                color: primaryColor,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                height: 20,
              ),

              CustomText(
                text: "How Many People are allawed?",
                color: primaryColor,
                fontSize: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        border: Border.all(
                            color: primaryColor,
                            style: BorderStyle.solid,
                            width: 1.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: primaryColor,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      border: Border.all(
                          color: primaryColor,
                          style: BorderStyle.solid,
                          width: 1.0),
                    ),
                    child: CustomText(
                      text: "1",
                      fontweight: FontWeight.bold,
                      fontSize: 20,
                      alignment: Alignment.center,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        border: Border.all(
                            color: primaryColor,
                            style: BorderStyle.solid,
                            width: 1.0),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: primaryColor,
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),


              Container(
                height: 60,
                width: 200,
                child: CustomButton(
                  onPressed: () {},
                  text: "Create ",
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
