import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/shared/FoodItemCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodItem> cartItems = [];
  final List<FoodItem> items = [
    FoodItem(
        1,
        "Maqluba",
        "rice,you turn the pot upside down when serving",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcLhJZfKMziE5if_GMu-SiF09pSq8XY3KT_g&s",
        50.03,
        "Rice"),
    FoodItem(
        2,
        "Ayaref",
        "Bread",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcLhJZfKMziE5if_GMu-SiF09pSq8XY3KT_g&s",
        50.03,
        "Breads"),

    // FoodItem(
    //     2,
    //     "Arayes",
    //     "a type of bread",
    //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcLhJZfKMziE5if_GMu-SiF09pSq8XY3KT_g&s",
    //     60.9,
    //     "Bread")
  ];
  VoidCallback AddToCart(FoodItem item) {
    return () {
      FoodItem TheItem = FoodItem(item.id, item.title, item.description,
          item.image, item.price, item.ItsCategory);
      cartItems.add(TheItem);
    };
  }

  @override
  Widget build(BuildContext context) {
    // return Text("HomePage");
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FoodItemCard(
            TheFoodItem: items[index], onPressed: AddToCart(items[index]));
        // return Container(
        //   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        //   child:
        //   //  FoodItemCard(
        //   //   TheFoodItem: items[index],
        //   ),
        // );
      },
    );
  }
}
