import 'package:egytologia/constance.dart';
import 'package:egytologia/view/widgets/custom_button.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsNewsScreen extends StatelessWidget {
  String image;
  DetailsNewsScreen({this.image});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: height * 0.4,
                  child: Image.asset(
                    "$image",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.05),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.09),
                  child: CustomText(
                    text: "New Hotel",
                    alignment: Alignment.center,
                    fontSize: 23,
                    fontweight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(top: 50),
                  margin: EdgeInsets.only(
                      top: height * 0.16,
                      right: width * 0.07,
                      left: width * 0.07),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20, right: 7),
                          height: height * 0.1,
                          width: width * 0.34,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "$image",
                                fit: BoxFit.cover,
                              ))),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomText(
                            text: "New Hotels",
                            color: primaryColor,
                            fontweight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.08),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: primaryColor,
                                ),
                                CustomText(
                                  text: "Cairo ",
                                  color: primaryColor,
                                  fontSize: 20,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                CustomText(
                                  text: " 4.9",
                                  color: primaryColor,
                                  fontweight: FontWeight.bold,
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  width: double.infinity,
                  height: height * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(
                text: "View",
                color: primaryColor,
                fontweight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height * 0.38,
              width: width * 0.9,
              child: GridView.extent(
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                padding: EdgeInsets.all(4.0),
                childAspectRatio: 10.0 / 9.0,
                maxCrossAxisExtent: 250,
                children: new List<Widget>.generate(4, (index) {
                  return new GridTile(
                    child: Container(
                      //  margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/room.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Column(
                  children: [
                    CustomText(
                      text: "Details",
                      color: primaryColor,
                      fontSize: 20,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text:
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour",
                      color: primaryColor,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: "Date: 5-12-2021 to 10-12-2021",
                      fontweight: FontWeight.bold,
                      color: primaryColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: "Time: 12:00 PM",
                      fontweight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
