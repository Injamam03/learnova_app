import 'package:flutter_task/View/All_Screen/CreateAccount/create_Account.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/bookScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/homescreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/notificationScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/notificationScreen2.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/profileScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/youTubeScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/SearchScreen/searchScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/home_Screen.dart';
import 'package:flutter_task/View/All_Screen/LoginScreen/login_Screen.dart';
import 'package:get/get.dart';




class AppRoute {
  ///==================== Initial Routes ====================
  static const String loginScreen = "/loginScreen";
  static const String createAcccount = "/createAcccount";
  static const String homeScreen = "/homeScreen";
  //==================== this is my all home screen ====================
  static const String homescreen = "/homescreen";
  static const String youtubeScreen = "/youtubeScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String bookScreen = "/bookScreen";
  static const String profileScreen = "/profileScreen";
  static const String searchscreen = "/searchscreen";
  static const String notificationscreen2 = "/notificationscreen2";






  static List<GetPage> routes = [
    ///==================== Authentication  Routes ====================

    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: createAcccount, page: () => CreateAccount()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    //==================== this is my all home screen ====================

    GetPage(name: homescreen, page: () => Homescreen()),
    GetPage(name: youtubeScreen, page: () =>Youtubescreen()),
    GetPage(name: notificationScreen, page: () =>Notificationscreen()),
    GetPage(name: bookScreen, page: () =>Bookscreen()),
    GetPage(name: profileScreen, page: () =>Profilescreen()),
    GetPage(name: searchscreen, page: () =>Searchscreen()),
    GetPage(name: notificationscreen2, page: () =>Notificationscreen2()),



  ];
}