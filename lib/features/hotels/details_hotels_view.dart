import 'package:egytologia/core/model/model_hotel.dart';
import 'package:egytologia/core/model/model_hotel.dart';

import 'package:egytologia/public/constance.dart';
import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:flutter/material.dart';

class DetailsHotels extends StatelessWidget {

final ModelHotel modelHotel;
  DetailsHotels({this.modelHotel});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.4,
              child: Image.network(
                "${modelHotel.image}",
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
            Container(
              // padding: EdgeInsets.only(top: 50),
              margin: EdgeInsets.only(
                  top: height * 0.26,
                  right: width * 0.04,
                  left: width * 0.04),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "${modelHotel.name}",
                          color: primaryColor,
                          fontSize: 18,
                          fontweight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "\$99/night",
                          color: primaryColor,
                          fontSize: 23,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                        ),
                        CustomText(
                          text: "${modelHotel.location} ",
                          color: primaryColor,
                          fontSize: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                        ),
                        CustomText(
                          text: "Location ",
                          color: primaryColor,
                          fontSize: 20,
                          fontweight: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        "assets/images/loca.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: height * 0.25,
                    width: width * 0.82,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Service",
                          color: primaryColor,
                          fontSize: 20,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Hotel Rules",
                          color: primaryColor,
                          fontSize: 20,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Contact us",
                          color: primaryColor,
                          fontSize: 20,
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.065,
                    margin: EdgeInsets.only(
                        left: width * 0.1, right: width * 0.1),
                    child: CustomButton(
                      text: "Book Now",
                      color: Colors.white,
                      fontSize: 20,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              width: double.infinity,
              height: height*0.81,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
