import 'package:egytologia/constance.dart';
import 'package:egytologia/view/posts_view.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProfileScreen extends StatelessWidget {
  @override
  String name="AhmedElbesy";
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: primaryColor
        ),
        
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/images/profilee.png"),
          ),
          CustomText(text: "$name",alignment: Alignment.center,fontSize: 20,color: primaryColor,fontweight: FontWeight.bold,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                Icon(Icons.add_location,color: primaryColor,),
                CustomText(text:"From: Egypt" ,color: primaryColor,fontSize: 18,fontweight: FontWeight.bold,)
              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                Icon(Icons.language_outlined,color: primaryColor,),
                CustomText(text:" Language: English" ,color: primaryColor,fontSize: 18,fontweight: FontWeight.bold,)
              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                Icon(Icons.phone,color: primaryColor,),
                CustomText(text:" Phone: 012234567892" ,color: primaryColor,fontSize: 18,fontweight: FontWeight.bold,)
              ],
            ),

          ),

          Container(

            height:80,
            padding: EdgeInsets.only(left: 10,right: 10),
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey.shade300,width: 3),


            ),
            child: Column(
              children: [
                CustomText(text: "Post",color: primaryColor,fontweight: FontWeight.bold,fontSize: 18,),
                Row(
                  children: [
                    Image.asset("assets/images/avatar.png"),
                    CustomText(text: "What's on your mind",color: Colors.grey.shade500,)
                  ],
                )
              ],
            ),
          ),
          Posts(height,width),

        ],
      ),
    );
  }
  Widget Posts(double height, double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        height: height * 0.44,
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      "assets/images/avatar.png",
                      fit: BoxFit.cover,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    text: "$name",
                    fontweight: FontWeight.bold,
                    fontSize: 20,
                    color: primaryColor,
                  )
                ],
              ),
            ),
            Container(
                height: height * 0.23,
                width: width * 0.8,
                child: Image.asset(
                  "assets/images/post.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                      icon: Image.asset("assets/images/love.png"),
                      onPressed: () {}),
                  IconButton(
                      icon: Image.asset("assets/images/chat.png"),
                      onPressed: () {
                        Get.to(PostScreen(
                          name: name,
                        ));
                      }),
                  IconButton(
                      icon: Image.asset("assets/icons/share.png"),
                      onPressed: () {}),
                ],
              ),
            ),
            Container(
              height: height * 0.04,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                      icon: Image.asset(
                        "assets/icons/group1.png",
                        fit: BoxFit.cover,
                      ),
                      onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: CustomText(
                      text: "Liked by Nour Ashref and 121 others",
                      color: primaryColor,
                      fontweight: FontWeight.bold,

                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        // color: Colors.red,
      ),
    );
  }
}
