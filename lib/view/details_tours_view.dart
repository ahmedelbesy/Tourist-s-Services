import 'package:egytologia/constance.dart';
import 'package:egytologia/view/widgets/Custom_dropdown_Button.dart';
import 'package:egytologia/view/widgets/custom_button.dart';

import 'package:egytologia/view/widgets/custom_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsToursScreen extends StatefulWidget {
  String image;
  DetailsToursScreen({this.image});

  @override
  _DetailsToursScreenState createState() => _DetailsToursScreenState();
}

class _DetailsToursScreenState extends State<DetailsToursScreen> {
  final List<String> _dropdownValues = [
    "Visitor",
    "Tour guide",
  ];

  @override
  String images = "assets/images/map.png";

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
                    "$images",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.05),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color:primaryColor,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.09),
                  child: CustomText(
                    text: "Dahab",
                    alignment: Alignment.center,
                    fontSize: 23,
                    fontweight: FontWeight.bold,
                    color: primaryColor,
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
                                "${widget.image}",
                                fit: BoxFit.cover,
                              ))),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomText(
                            text: "Colar island",
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
                                  text: "Dahab ",
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
              width: width * 1.0,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: EdgeInsets.all(10.0),
                mainAxisSpacing: 7.0,
                crossAxisSpacing: 7.0,
                children: new List<Widget>.generate(6, (index) {
                  return new GridTile(
                    child: Container(
                      //  margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/sky.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
              ),
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

                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 70,
                  width: 260,
                  child: CustomButton(
                    text: "Book now",
                    color: Colors.white,
                    fontSize: 20,
                    onPressed: () {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Custom_Dialog();
                          });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  width: 260,
                  child: CustomButton(
                    text: "join chat",
                    color: Colors.white,
                    fontSize: 20,
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
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
        height: 450,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CustomText(
                text: "Booking",
                alignment: Alignment.center,
                fontSize: 20,
                color: primaryColor,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.39,
                    child: CustomDropdownButton(
                      text: "data",
                      dropdownValues: _dropdownValues,
                      onChanged: (String value) {},
                    ),
                  ),
                  Container(
                    width: width* 0.33,
                    child: CustomDropdownButton(
                      text: "Time PM",
                      dropdownValues: _dropdownValues,
                      onChanged: (String value) {},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "How Many People ?",
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
              Row(
                children: [
                  Container(
                    width: 220,
                    child: CustomDropdownButton(
                      text: "choose Tour guide ",
                      dropdownValues: _dropdownValues,
                      onChanged: (String value) {},
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    text: "Avilable",
                    color: primaryColor,
                    fontSize: 20,
                    fontweight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                width: 220,
                child: CustomButton(
                  onPressed: () {},
                  text: "Book",
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
