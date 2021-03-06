import 'package:conditional_builder/conditional_builder.dart';
import 'package:egytologia/core/model/response/respons_hotel.dart';
import 'package:egytologia/features/hotels/cubit/cubit.dart';
import 'package:egytologia/features/hotels/cubit/state.dart';
import 'package:egytologia/features/transportation/transportation_view.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:egytologia/routes/app_pages.dart';
import 'package:egytologia/routes/app_routes.dart';
import '../../public/constance.dart';
import 'details_hotels_view.dart';

class HotelsScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (BuildContext context) =>HotelsCubit()..getHothedData(),

        child: BlocConsumer<HotelsCubit,HotelStates>(
          listener: (context, state) {},
          builder: (context, state) {

            var model =HotelsCubit.get(context).hotelResponse ;
            return ConditionalBuilder(
                condition: model != null ?? null,

                builder: (context) => Hotel(
                    HotelsCubit.get(context).hotelResponse , height,context),
                fallback: (context) => Center(
                  child: CircularProgressIndicator(),
                ));


          },

        ),
      ),
    );
  }
Widget Hotel( HotelResponse hotelResponse,double height,  BuildContext context){
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
                      child: GestureDetector(
                        onTap: () {
                          NamedNavigatorImpl().push(Routes. Hotel_DITALS_ROUTER ,arguments:hotelResponse.data[index]);

                          // Get.to(DetailsHotels(
                          //   image: images,
                          // ));
                        },
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
                                  "${hotelResponse.data[index].image}",
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
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            text: "Aston Hotel Room",
                                            fontweight: FontWeight.bold,
                                            color: primaryColor,
                                            fontSize: 17,
                                          ),
                                          CustomText(
                                            text: "150\$nights",
                                            fontweight: FontWeight.bold,
                                            fontSize: 20,
                                            color: primaryColor,
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
                                            size: 25,
                                          ),
                                          CustomText(
                                            text: "${hotelResponse.data[index].location} ",
                                            color: primaryColor,
                                            fontSize: 20,
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
                                        IconButton(
                                            icon: Image.asset(
                                                "assets/images/star.png"),
                                            onPressed: () {}),
                                        CustomText(
                                          text: "4.9",
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
                      ),
                    )
                  ],
                );
              },
              itemCount:hotelResponse.data.length,
            ),
          ),
        ),
        Container(
          height: height * 0.19,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
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
              SizedBox(
                width: 120,
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.07),
                child: CustomText(
                  text: "Hotels",
                  alignment: Alignment.center,
                  fontSize: 25,
                  fontweight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
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
