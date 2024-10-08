import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCart.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCategories.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyFavourites.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyHomePage.dart';

class MyLanding extends StatefulWidget {
  const MyLanding({super.key});

  @override
  State<MyLanding> createState() => _MyLandingState();
}

class _MyLandingState extends State<MyLanding> {
  int _selectedIndex = 0;

  static List<String> AppBarTitles = <String>[
    "Home",
    "Categories",
    "Favourites",
    "Cart"
  ];

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
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppBarTitles[_selectedIndex]),
            Text("Union Place, Colombo 02")
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: 'Cart'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
