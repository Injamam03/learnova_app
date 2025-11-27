import 'package:flutter/material.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/bookScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/homeScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/homescreen.dart' hide Homescreen;
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/notificationScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/profileScreen.dart';
import 'package:flutter_task/View/All_Screen/HomeScreen/AllHomeScreen/youTubeScreen.dart';
import 'package:flutter_task/View/Widgets/CustomButtomNavBar/buttomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _allHomeScreen= [
    Homescreen(),
    Youtubescreen(),
    Notificationscreen(),
    Bookscreen(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.red,
      body:
      _allHomeScreen[_currentIndex],
        bottomNavigationBar:CustomBoomNavBar(
            currentIndex: _currentIndex,
            onTap: (index){
              setState(() {
                _currentIndex=index;
              });
            }),

    );
  }
}
