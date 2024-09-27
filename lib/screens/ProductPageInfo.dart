import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCart.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyCategories.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyFavourites.dart';
import 'package:sem_one_mobile_app_assignment/screens/MyHomePage.dart';

class ProductPageInfo extends StatefulWidget {
  const ProductPageInfo({
    super.key,
    required this.TheItem,
    required this.onPressed,
    required this.whenPressed,
  });

  final FoodItem TheItem;
  final VoidCallback onPressed;
  final VoidCallback whenPressed;
  final bool _isViewMoreSelected = false;

  @override
  State<ProductPageInfo> createState() => _ProductPageInfoState();
}

class _ProductPageInfoState extends State<ProductPageInfo> {
  int _selectedIndex = 0;

  // List of pages for each BottomNavigationBar item
  final List<Widget> _pages = [
    MyHomePage(orientation: Orientation.portrait),
    MyCategories(orientation: Orientation.portrait),
    MyFavourites(orientation: Orientation.portrait),
    MyCart(orientation: Orientation.portrait),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the height of the screen
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.TheItem.title),
        centerTitle: true,
      ),
      body: Card(
        elevation: 5,
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image takes 1/3 of the screen height
              SizedBox(
                width: double.infinity,
                height: screenHeight / 3, // 1/3rd of the screen height
                child: Image.network(
                  widget.TheItem.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              // Title
              Text(
                widget.TheItem.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Detailed description
              Text(
                widget.TheItem.detaileddescription,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              // Buttons in a row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: widget.onPressed,
                    child: const Text("Add to Cart"),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: widget.whenPressed,
                    child: const Text("Favourite"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // BottomNavigationBar to switch between pages
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
