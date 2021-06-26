import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../constance.dart';


class Notifications_TourGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.15),
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              radius: 35,
                              backgroundColor: Colors.grey.shade300,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                  text: " Alex and 11 others people",
                                  color: primaryColor,
                                  fontSize: 20,
                                  fontweight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                  text: " react to a post your share",
                                  color: primaryColor,
                                  fontSize: 20,
                                  fontweight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                  text: "1 minute ago",
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontweight: FontWeight.bold,
                                ),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                    height: height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: primaryColor),
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
          Container(
            height: height * 0.20,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CustomText(
                text: "Notifications",
                alignment: Alignment.center,
                fontSize: 25,
                fontweight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
