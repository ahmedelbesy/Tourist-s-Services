import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../constance.dart';

class PostScreen extends StatelessWidget {
  String name;
  PostScreen({this.name});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.16),
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    icon: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 90),
                  child: CustomText(
                    text: "$name",
                    alignment: Alignment.center,
                    fontSize: 20,
                    color: Colors.white,
                    fontweight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Posts(height, width),


          ],
        ),
      ),
    );
  }

  Widget Posts(double height, double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Container(
              height: height * 0.35,
              width: width * 0.83,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/post.png",
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Row(
              children: [
                IconButton(
                    icon: Image.asset("assets/images/love.png"),
                    onPressed: () {}),
                CustomText(
                  text: "Liked by Nour Ashref and 121 others",
                  color: primaryColor,
                  fontweight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey.shade400,
            height: 2,
          ),
          SizedBox(
            height: 10,
          ),

          comments(height, width),
          SizedBox(height: 20,),
          comments(height, width),
          SizedBox(height: 20,),
          comments(height, width),


        ],
      ),
    );
  }


   comments(double height, double width) {
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2),
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
                    fontSize: 18,
                    color: primaryColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.19,
              width: width * 3,
              margin: EdgeInsets.only(left: width * 0.04),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                elevation: 1,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                    BorderSide(color: Colors.grey.shade300, width: 1.5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text:
                    "is simply dummy text of the printing andtypesetting industry . Lorem Ipsum has been the industry's standarddummy text ever since the 1500s,when an unknown printer took a galley of typeand scrambled it to make a type specimen book.",
                    fontSize: 16,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
          ],
        );
  }
}
