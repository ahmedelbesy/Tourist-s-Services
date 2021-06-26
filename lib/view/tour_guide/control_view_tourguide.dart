import 'package:egytologia/constance.dart';
import 'package:egytologia/core/view_model/control_view_model.dart';
import 'package:egytologia/core/view_model/controlview_tourguide.dart';
import 'package:egytologia/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView_TourGuide extends GetWidget<HomeViewModel_guide> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel_guide>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: bottomNavigationBar(),
        body: controller.currentScreen,
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<HomeViewModel_guide>(
      init: HomeViewModel_guide(),
      builder: (controller) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 25.0),
                child:CustomText(text: "Home",alignment: Alignment.center,color: primaryColor,fontweight: FontWeight.bold,),

              ),
              label: "",

              icon: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: IconButton(icon: Image.asset("assets/icons/home.png"),),
              )),
          BottomNavigationBarItem(
              activeIcon: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child:CustomText(text: "Notifications",color: primaryColor,fontweight: FontWeight.bold,)

              ),
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 20),
                child:  IconButton(icon: Image.asset("assets/icons/noiftions.png"),),
              )),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: CustomText(text:"Chat",color: primaryColor,fontweight: FontWeight.bold,),
              ),
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child:  IconButton(icon: Image.asset("assets/images/chat.png"),),
              )),
        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
        elevation: 1,
      ),
    );
  }
}
