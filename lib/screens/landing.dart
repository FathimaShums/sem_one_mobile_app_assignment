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
  int _selectedIndex = 0;

  static List<String> AppBarTitles = <String>["Home", "Categories", "Profile"];

  // Function to update the selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation =
        MediaQuery.of(context).orientation; // Get orientation here

    List<Widget> _pages = <Widget>[
      MyHomePage(orientation: orientation),
      MyCategories(orientation: orientation),
      MyFavourites(orientation: orientation),
      MyCart(orientation: orientation),
      MyProfile(orientation: orientation),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Union Place, Colombo 02"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: 'User'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
