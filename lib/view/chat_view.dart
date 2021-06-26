import 'package:egytologia/view/detalis_chat.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constance.dart';

class Chats_view extends StatelessWidget {
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
              height: 20,
            ),
            Container(
              child: ListView.builder(
                //  physics: const NeverScrollableScrollPhysics(),


                  padding: EdgeInsets.only(top: 50),

                  itemCount: 20,
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
}
