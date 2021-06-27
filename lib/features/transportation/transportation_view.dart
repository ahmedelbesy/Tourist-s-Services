import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../public/constance.dart';

class TransportationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height * 0.20,
            decoration: BoxDecoration(
                color: primaryColor,  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),),),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),

                Padding(
                  padding: const EdgeInsets.only(left: 80,top: 40),
                  child: CustomText(
                    text: "Transportation",
                    alignment: Alignment.center,
                    fontSize: 25,
                    fontweight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: height * 0.08,
                  width: width * 0.9,
                  child: CustomText(
                    text: "Uber",
                    alignment: Alignment.center,
                    color: primaryColor,
                    fontweight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: primaryColor, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: height * 0.08,
                  width: width * 0.9,
                  child: CustomText(
                    text: "Kareem",
                    alignment: Alignment.center,
                    color: primaryColor,
                    fontweight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: primaryColor, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: height * 0.08,
                  width: width * 0.9,
                  child: CustomText(
                    text: "Flights",
                    alignment: Alignment.center,
                    color: primaryColor,
                    fontweight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: primaryColor, width: 1),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
