import 'package:carousel_slider/carousel_slider.dart';
import 'package:egytologia/core/model/model_places.dart';
import 'package:egytologia/public/constance.dart';
import 'package:egytologia/common_components/Custom_dropdown_Button.dart';
import 'package:egytologia/common_components/custom_button.dart';

import 'package:egytologia/common_components/custom_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailsPlaceScreen extends StatefulWidget {
  final ModelPlace modelPlace;
  DetailsPlaceScreen({this.modelPlace});

  @override
  _DetailsPlaceScreenState createState() => _DetailsPlaceScreenState();
}

class _DetailsPlaceScreenState extends State<DetailsPlaceScreen> {
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
                  child: Image.network(
                    "${widget.modelPlace.image}",
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
                    text: "${widget.modelPlace.name}",
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
                      right: width * 0.05,
                      left: width * 0.05),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20, right: 5),
                          height: height * 0.1,
                          width: width * 0.20,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                "${widget.modelPlace.image}",
                                fit: BoxFit.cover,
                              ))),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomText(
                            text: "${widget.modelPlace.name}",
                            color: primaryColor,
                            fontweight: FontWeight.bold,
                            fontSize: 16,
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
                                  text: "${widget.modelPlace.location} ",
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
            CarouselSlider(
              items: [
                //1st Image of Slider
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://website-alroeya.s3.eu-central-1.amazonaws.com/uploads/images/2020/03/23/771688.JPG"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),

                //2nd Image of Slider
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://gate.ahram.org.eg/Media/News/2018/11/13/19_2018-636777240438995468-899.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),

                //3rd Image of Slider
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://website-alroeya.s3.eu-central-1.amazonaws.com/uploads/images/2020/03/23/771688.JPG"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),

                //4th Image of Slider
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH7eyyavdISWmj675hfPSFMpG5q5QYUdg75A&usqp=CAU"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),

                //5th Image of Slider
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJSr0ogpIfWG4IN5yefS_U2ou5o33wOXby_A&usqp=CAU"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 10,top: 20),
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
                      text:"${widget.modelPlace.description} ",

                      color: primaryColor,
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CustomText(text: "Open:",fontSize: 18,fontweight: FontWeight.bold,color: primaryColor,),
                        CustomText(text: " Sunday to Thursday ",color: primaryColor,),
                        CustomText(text: "at:",fontweight: FontWeight.bold,color: primaryColor,fontSize: 18,),
                        CustomText(text: " 12:00 PM ",color: primaryColor,),
                      ],
                    )


                  ],
                )),


          ],
        ),
      ),
    );
  }


}
