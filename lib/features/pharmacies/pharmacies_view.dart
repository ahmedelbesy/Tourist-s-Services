import 'package:conditional_builder/conditional_builder.dart';
import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:egytologia/core/model/response/pharmacy_response.dart';
import 'package:egytologia/features/pharmacies/cuibt/cuibt.dart';
import 'package:egytologia/features/pharmacies/cuibt/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../public/constance.dart';

class PharmaciesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (BuildContext context) => PharmaciesCubit()..getPharmaciesdData(),
        child: BlocConsumer<PharmaciesCubit,PharmaciesStates>(
          listener: (context, state) {},
          builder:(context, state){
            var model=PharmaciesCubit.get(context).pharmacyResponse;
            return ConditionalBuilder(
                condition: model != null ?? null,

                builder: (context) => Pharmacy(
                    PharmaciesCubit.get(context).pharmacyResponse , height,context,width),
                fallback: (context) => Center(
                  child: CircularProgressIndicator(),
                ));
          } ,

        ),
      ),
    );
  }

  Widget Pharmacy(PharmacyResponse pharmacyResponse,double height,BuildContext context,double width){
    return  Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.27),
          child: Container(

            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Image.network(
                                "${pharmacyResponse.data[index].image}",
                                fit: BoxFit.cover,
                              ),
                              height: height * 0.19,
                              width: double.infinity,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomText(
                                      text: "${pharmacyResponse.data[index].name}",
                                      fontweight: FontWeight.bold,
                                      color: primaryColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: primaryColor,
                                          size: 25,
                                        ),
                                        Container(
                                          child: CustomText(
                                            text: "${pharmacyResponse.data[index].location} ",
                                            color: primaryColor,
                                            fontSize: 20,
                                          ),
                                          width:    MediaQuery.of(context).size.width * 0.7,
                                        ),
                                        // Container(
                                        //   margin: EdgeInsets.only(
                                        //     left: width * 0.35,
                                        //   ),
                                        //   height: 50,
                                        //   width: 120,
                                        //   child: CustomButton(
                                        //     text: "call",
                                        //     fontSize: 20,
                                        //     color: Colors.white,
                                        //     onPressed: () {},
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [

                                      IconButton(
                                          icon: Image.asset(
                                              "assets/images/star.png"),
                                          onPressed: () {}),
                                      IconButton(
                                          icon: Image.asset(
                                              "assets/images/star.png"),
                                          onPressed: () {}),
                                      CustomText(
                                        text: "4.9",
                                        color: primaryColor,
                                        fontweight: FontWeight.bold,
                                      ),
                                     SizedBox(width: 50,),
                                     CustomText(
                                        text: "Phone: ${pharmacyResponse.data[index].contacts}",fontSize: 20,fontweight: FontWeight.bold,color: primaryColor,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: pharmacyResponse.data.length,
            ),
          ),
        ),
        Container(
          height: height * 0.19,
          decoration: BoxDecoration(
            color: primaryColor,  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40),),),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  padding: EdgeInsets.only(top: height * 0.07),
                  child: CustomText(
                    text: "Pharmacies",
                    alignment: Alignment.center,
                    fontSize: 25,
                    fontweight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.22),
          child: _searchTextFormField(),
        ),
      ],
    );
  }
  Widget _searchTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
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
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.circular(15),
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
