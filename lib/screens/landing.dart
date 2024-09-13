import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCart.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCategories.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyFavourites.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyHomePage.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyProfile.dart';

class MyLanding extends StatefulWidget {
  const MyLanding({super.key});

  @override
  State<MyLanding> createState() => _MyLandingState();
}

class _MyLandingState extends State<MyLanding> {
  // Variable to keep track of the selected index
  int _selectedIndex = 0;

  // List of widgets for different pages
  static List<String> AppBarTitles = <String>["Home", "Categories", "Profile"];
  static List<Widget> _pages = <Widget>[
    MyHomePage(),
    MyCategories(),
    MyFavourites(),
    MyCart(),
    MyProfile(),
  ];

  // Function to update the selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
