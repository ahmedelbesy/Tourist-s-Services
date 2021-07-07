
import 'package:conditional_builder/conditional_builder.dart';
import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:egytologia/core/model/response/restaurant_response.dart';
import 'package:egytologia/features/restaurant/cuibt/cuibt.dart';
import 'package:egytologia/features/restaurant/cuibt/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../public/constance.dart';

class RestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create:  (BuildContext context) =>RestaurantCubit()..getRestaurantdData(),

        child: BlocConsumer<RestaurantCubit,RestaurantStates>(
        listener: (context, state) {},
          builder: (context, state) {

            var model =RestaurantCubit.get(context).restaurantResponse ;
            return ConditionalBuilder(
                condition: model != null ?? null,

                builder: (context) => Restaurants(
                    RestaurantCubit.get(context).restaurantResponse , height, width,context),
                fallback: (context) => Center(
                  child: CircularProgressIndicator(),
                ));


          },

        ),
      ),
    );
  }
Widget Restaurants(RestaurantResponse data,double height,width, BuildContext context){
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.27),
          child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
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
                                "${data.data[index].image}",
                                fit: BoxFit.cover,
                              ),
                              height: height * 0.15,
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
                                      text: "${data.data[index].name}",
                                      fontweight: FontWeight.bold,
                                      color: primaryColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Padding(


                                    padding: EdgeInsets.only(left: 5,right: 0),

                                    child: Row(

                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: primaryColor,
                                          size: 25,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: CustomText(
                                            text: "${data.data[index].location}",
                                            color: primaryColor,
                                            fontSize: 20,
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(left: 40),
                                          child: Row(

                                            children: [
                                              Container(
                                           //     margin: EdgeInsets.only(left: 40,),


                                                height: 50 ,
                                                width: 120,


                                                child: CustomButton(


                                                  text: "call",
                                                  fontSize: 20,
                                                  color: Colors.white,

                                                  onPressed: (){},
                                                ),
                                              ),
                                            ],

                                          ),
                                        )

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
                                      IconButton(
                                          icon: Image.asset(
                                              "assets/images/star.png"),
                                          onPressed: () {}),
                                      CustomText(
                                        text: "4.9",
                                        color: primaryColor,
                                        fontweight: FontWeight.bold,
                                      ),
                                      SizedBox(width: 30,),
                                      CustomText(
                                        text: "${data.data[index].availability[0].option}",
                                        color: primaryColor,
                                        fontweight: FontWeight.bold,
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
              itemCount: data.data.length,
            ),
          ),
        ),
        Container(
          height: height * 0.19,
          decoration: BoxDecoration(
            color: primaryColor,  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40),),),
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
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
                  padding:  EdgeInsets.only(top: height*0.07),
                  child: CustomText(
                    text: "Restaurant",
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
                    onPressed: () {

                    }),
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
