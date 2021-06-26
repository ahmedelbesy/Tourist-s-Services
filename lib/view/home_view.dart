import 'package:egytologia/core/view_model/control_view_model.dart';
import 'package:egytologia/view/place_view.dart';
import 'package:egytologia/view/posts_view.dart';
import 'package:egytologia/view/profile_view.dart';
import 'package:egytologia/view/report_view.dart';

import 'package:egytologia/view/restaurant_view.dart';
import 'package:egytologia/view/settings_view.dart';
import 'package:egytologia/view/tour_view.dart';

import 'package:egytologia/view/transportation_view.dart';
import 'package:egytologia/view/widgets/custom_drawer.dart';

import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:egytologia/view/widgets/listview_category_view.dart';
import 'package:egytologia/view/pharmacies_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constance.dart';
import 'auth/login_view.dart';
import 'favorite_view.dart';
import 'hotels_view.dart';
import 'news_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String name = "AhmedElbesy";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GetBuilder<HomeViewModel>(
      init: Get.find(),
      builder: (controller) => Scaffold(
          drawer: Drawer(
            child: Custom_Drawer(height),
          ),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(height * 0.13),
            child: AppBar(
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                        icon: Image.asset("assets/images/menu.png"),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
                 Column(
                   children: [

                     IconButton(
                       icon: Image.asset("assets/icons/Logo.png"),
                     ),
                     CustomText(
                       text: "Tourist's Services",
                       fontFamily: 'brushscript',
                       fontSize: 15,
                    //   fontweight: FontWeight.w700,
                       color: Colors.white,
                     ),
                   ],
                 )

                  ],
                ),
              ),
              backgroundColor: primaryColor,
              elevation: 0,
              centerTitle: false,
              titleSpacing: 0,
              shape: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Image.asset(
                "assets/images/edit.png",
              ),
              onPressed: () {},
            ),
          ),
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  _searchTextFormField(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: height * 0.2,
                    child: Categorys(),
                  ),
                  Posts(height, width),
                ],
              )
            ],
          )),
    );
  }

  Widget Categorys() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(ToursScreen());
          },
          child: ListViewCategory(
            text: "Tours",
            image: Image.asset(
              "assets/images/trip.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Get.to(PlaceScreens()),
          child: ListViewCategory(
            text: "Place",
            image: Image.asset(
              "assets/icons/place.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(NewsScreen());
          },
          child: ListViewCategory(
            text: "News",
            image: Image.asset(
              "assets/images/news.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(PharmaciesScreen());
          },
          child: ListViewCategory(
            text: "Pharmacy",
            image: Image.asset(
              "assets/images/pha.png",
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(HotelsScreen());
          },
          child: ListViewCategory(
            text: "Hotels",
            image: Image.asset(
              "assets/images/hotel.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(TransportationScreen());
          },
          child: ListViewCategory(
            text: "Transportation",
            image: Image.asset(
              "assets/images/Transportation.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(RestaurantScreen());
          },
          child: ListViewCategory(
            text: "Restaurant",
            image: Image.asset(
              "assets/images/restaurant.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget Custom_Drawer(double height) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.15, left: 30),
      child: Column(
        children: [
          Custom_Drawer_Icons(
            image: "assets/icons/bookmark.png",
            name: "Favorite",
            colortext: primaryColor,
            onPressed: () => Get.to(FavoriteScreen()),
          ),
          Custom_Drawer_Icons(
            image: "assets/icons/settings.png",
            name: "Settings",
            colortext: primaryColor,
            onPressed: () => Get.to(SettingScreens()),
          ),
          Custom_Drawer_Icons(
            image: "assets/icons/profile.png",
            name: "Profile",
            colortext: primaryColor,
            onPressed: () => Get.to(ProfileScreen()),
          ),
          Custom_Drawer_Icons(
            image: "assets/icons/report.png",
            name: "Report",
            colortext: primaryColor,
            onPressed: () {
              Get.to(ReportScreen());
            },
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            color: Colors.grey,
            height: 1,
          ),
          Custom_Drawer_Icons(
            image: "assets/icons/logout.png",
            name: "Log out",
            onPressed: () => Get.to(LoginScreen()),
            colortext: Color(0xFFFFA200),
          )
        ],
      ),
    );
  }

  Widget Posts(double height, double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        height: height * 0.44,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
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
                    fontSize: 20,
                    color: primaryColor,
                  )
                ],
              ),
            ),
            Container(
                height: height * 0.23,
                width: width * 0.8,
                child: Image.asset(
                  "assets/images/post.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                      icon: Image.asset("assets/images/love.png"),
                      onPressed: () {}),
                  IconButton(
                      icon: Image.asset("assets/images/chat.png"),
                      onPressed: () {
                        Get.to(PostScreen(
                          name: name,
                        ));
                      }),
                  IconButton(
                      icon: Image.asset("assets/icons/share.png"),
                      onPressed: () {}),
                ],
              ),
            ),
            Container(
              height: height * 0.04,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                      icon: Image.asset(
                        "assets/icons/group1.png",
                        fit: BoxFit.cover,
                      ),
                      onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: CustomText(
                      text: "Liked by Nour Ashref and 121 others",
                      color: primaryColor,
                      fontweight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        // color: Colors.red,
      ),
    );
  }

  // ignore: non_constant_identifier_names

  Widget _searchTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
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
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.circular(18),
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
