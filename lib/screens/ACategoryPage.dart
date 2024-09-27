import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/main.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCart.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCategories.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyFavourites.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyHomePage.dart';

import 'package:sem_one_mobile_app_assignment/shared/FoodItemCard.dart';

class Acategorypage extends StatefulWidget {
  const Acategorypage({
    super.key,
    required this.orientation,
    required this.oftype,
    required this.isCategorySelected,
  });

  final Orientation orientation;
  final String oftype;
  final bool isCategorySelected;

  @override
  State<Acategorypage> createState() => _AcategorypageState();
}

class _AcategorypageState extends State<Acategorypage> {
  int _selectedIndex = 0; // Index for BottomNavigationBar
  bool _isCategorySelected =
      false; // Internal boolean to track category selection

  @override
  void initState() {
    super.initState();
    _isCategorySelected = widget.isCategorySelected;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _isCategorySelected = false;
    });
  }

  List<FoodItem> getFilteredItems() {
    return items.where((item) => item.ItsCategory == widget.oftype).toList();
  }

  VoidCallback AddToCart(FoodItem item) {
    return () {
      FoodItem TheItem = FoodItem(item.id, item.title, item.description,
          item.detaileddescription, item.image, item.price, item.ItsCategory);
      cartItems.add(TheItem);
    };
  }

  VoidCallback AddToFavourites(FoodItem item) {
    return () {
      FoodItem TheItem = FoodItem(item.id, item.title, item.description,
          item.detaileddescription, item.image, item.price, item.ItsCategory);
      favouriteItems.add(TheItem);
    };
  }

  // List of pages for each BottomNavigationBar item
  final List<Widget> _pages = [
    MyHomePage(orientation: Orientation.portrait),
    MyCategories(orientation: Orientation.portrait),
    MyFavourites(orientation: Orientation.portrait),
    MyCart(orientation: Orientation.portrait),
  ];

  @override
  Widget build(BuildContext context) {
    // Fetch filtered items based on the selected category
    List<FoodItem> filteredItems = getFilteredItems();

    return Scaffold(
      appBar: AppBar(
        title:
            Text(_isCategorySelected ? widget.oftype : 'Union Place,Colombo 2'),
        // Change title dynamically
        centerTitle: true,
      ),
      body: _isCategorySelected
          ? ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return FoodItemCard(
                  TheFoodItem: filteredItems[index],
                  onPressed: AddToCart(filteredItems[index]),
                  whenPressed: AddToFavourites(filteredItems[index]),
                  orientation: widget.orientation,
                );
              },
            )
          : _pages[
              _selectedIndex], // Show page based on BottomNavigationBar selection
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
