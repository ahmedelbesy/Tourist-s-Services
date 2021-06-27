
import 'package:egytologia/features/chat/chat_view.dart';
import 'package:egytologia/features/main/home_view.dart';
import 'package:egytologia/features/notifications/notifications_view.dart';
import 'package:flutter/material.dart';


class HomeViewModel {
  int _navigatorValue=0;
  get navigatorValue =>_navigatorValue;
  Widget _currentScreen=HomeView();
  get currentScreen =>_currentScreen;

  void changeSelectedValue(int selectedValue){
    _navigatorValue=selectedValue;
    switch(selectedValue){
      case 0:{
        _currentScreen=HomeView();
        break;
      }
      case 1:{
        _currentScreen=Notifications_View();
        break;
      }
      case 2:{
        _currentScreen=Chats_view();
        break;
      }

    }

  }
}