import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/main.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
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
  final List<FoodItem> items = [
    FoodItem(
        1,
        "Maqluba",
        "rice, you turn the pot upside down when serving",
        "Includes fried vegetables such as eggplant, cauliflower, and potatoes, arranged in a pot before being cooked and inverted for presentation",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC7yHnSVgsZqy1WQEsiT-Dgjj1NjpxjrpZWA&s",
        50.03,
        "Rice"),
    FoodItem(
        2,
        "Cream Cheese",
        "Bread",
        "",
        "https://www.tashasartisanfoods.com/blog/wp-content/uploads/2023/04/Korean-Cream-Cheese-Garlic-Bread-8.jpeg",
        50.03,
        "Breads"),
  ];

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

  @override
  Widget build(BuildContext context) {
    List<FoodItem> filteredItems = getFilteredItems();

    return ListView.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        return FoodItemCard(
          TheFoodItem: filteredItems[index],
          onPressed: AddToCart(filteredItems[index]),
          whenPressed: AddToFavourites(filteredItems[index]),
          onViewMore: NavigateToProductPage(filteredItems[index]),
        );
      },
    );
  }
}
