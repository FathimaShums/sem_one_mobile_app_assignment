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
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
      position: RelativeRect.fromLTRB(100.0, 100.0, 0.0, 0.0),
      items: [
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

  @override
  Widget build(BuildContext context) {
    List<FoodItem> filteredItems = getFilteredItems();
    List<Widget> _pages = <Widget>[
      MyHomePage(orientation: widget.orientation),
      MyCategories(orientation: widget.orientation),
      MyFavourites(orientation: widget.orientation),
      MyCart(orientation: widget.orientation),
      MyProfile(orientation: widget.orientation),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.oftype),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: _showCategories,
        ),
      ),
      body: ListView.builder(
        itemCount: filteredItems.length,
        itemBuilder: (context, index) {
          return FoodItemCard(
            TheFoodItem: filteredItems[index],
            onPressed: AddToCart(filteredItems[index]),
            whenPressed: AddToFavourites(filteredItems[index]),
            onViewMore: NavigateToProductPage(filteredItems[index]),
          );
        },
      ),
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
