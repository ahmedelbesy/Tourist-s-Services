
import 'package:egytologia/view/auth/register_tour_guide_view.dart';
import 'package:egytologia/view/chat_view.dart';
import 'package:egytologia/view/home_view.dart';
import 'package:egytologia/view/notifications_view.dart';
import 'package:egytologia/view/tour_guide/chats_view_tourguide.dart';
import 'package:egytologia/view/tour_guide/home_view.dart';
import 'package:egytologia/view/tour_guide/notification_view_tourguide.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel_guide extends GetxController{
  int _navigatorValue=0;
  get navigatorValue =>_navigatorValue;
  Widget _currentScreen=HomeView_TourGuide();
  get currentScreen =>_currentScreen;

  void changeSelectedValue(int selectedValue){
    _navigatorValue=selectedValue;
    switch(selectedValue){
      case 0:{
        _currentScreen=HomeView_TourGuide();
        break;
      }
      case 1:{
        _currentScreen=Notifications_TourGuide();
        break;
      }
      case 2:{
        _currentScreen=Chats_Tourguide();
        break;
      }

    }
    update();
  }
}