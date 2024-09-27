import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/main.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

import 'package:sem_one_mobile_app_assignment/shared/FoodItemCard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  //    void NavigateToViewAllScreen() {
  //   print("Size of the List" + cartItems.length.toString());
  //   Navigator.pushNamed(context, '/favorites', arguments: cartItems);
  // }

  @override
  Widget build(BuildContext context) {
    // return Text("HomePage");
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FoodItemCard(
          TheFoodItem: items[index],
          onPressed: AddToCart(items[index]),
          whenPressed: AddToFavourites(items[index]),
          orientation: widget.orientation,
        );
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
