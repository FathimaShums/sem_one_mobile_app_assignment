import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/main.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCart.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCategories.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyFavourites.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyHomePage.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyProfile.dart';
import 'package:sem_one_mobile_app_assignment/screens/ProductPageInfo.dart';
import 'package:sem_one_mobile_app_assignment/shared/FoodItemCard.dart';

class Acategorypage extends StatefulWidget {
  const Acategorypage(
      {super.key, required this.orientation, required this.oftype});

  final Orientation orientation;
  final String oftype;

  @override
  State<Acategorypage> createState() => _AcategorypageState();
}

class _AcategorypageState extends State<Acategorypage> {
  int _selectedIndex = 0;
  bool _isHamburgerMenuSelected = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _isHamburgerMenuSelected = false; // When bottom navigation bar is tapped
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
      cartItems.add(TheItem);
    };
  }

  VoidCallback NavigateToProductPage(FoodItem item) {
    return () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductPageInfo(
            TheItem: item,
            onPressed: () => AddToCart(item), // Pass AddToCart action
            whenPressed: () =>
                AddToFavourites(item), // Pass AddToFavourites action
          ),
        ),
      );
    };
  }

  // Method to show the categories
  void _showCategories() {
    showMenu(
      context: context,
      position:
          RelativeRect.fromLTRB(0.0, AppBar().preferredSize.height, 0.0, 0.0),
      items: const [
        PopupMenuItem(
          child: Text('Rice'),
          value: 'Rice',
        ),
        PopupMenuItem(
          child: Text('Bread'),
          value: 'Bread',
        ),
        PopupMenuItem(
          child: Text('Salads'),
          value: 'Salads',
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) {
        setState(() {
          _isHamburgerMenuSelected = true; // Show category items when selected
        });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Acategorypage(
              orientation: widget.orientation,
              oftype: value,
            ),
          ),
        );
      }
    });
  }

  // List of pages for each BottomNavigationBar item
  List<Widget> _pages = [
    MyHomePage(orientation: Orientation.portrait),
    MyCategories(orientation: Orientation.portrait),
    MyFavourites(orientation: Orientation.portrait),
    MyCart(orientation: Orientation.portrait),
    MyProfile(orientation: Orientation.portrait),
  ];

  @override
  Widget build(BuildContext context) {
    List<FoodItem> filteredItems = getFilteredItems();

    return Scaffold(
      appBar: AppBar(
        title: Text(_isHamburgerMenuSelected
            ? widget.oftype
            : 'Union Place, Colombo 2'),
        centerTitle: true,
        leading: _isHamburgerMenuSelected
            ? IconButton(
                icon: Icon(Icons.menu),
                onPressed: _showCategories,
              )
            : null,
      ),
      body: _isHamburgerMenuSelected
          ? ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return FoodItemCard(
                  TheFoodItem: filteredItems[index],
                  onPressed: AddToCart(filteredItems[index]),
                  whenPressed: AddToFavourites(filteredItems[index]),
                  onViewMore: NavigateToProductPage(filteredItems[index]),
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
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: 'User'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
