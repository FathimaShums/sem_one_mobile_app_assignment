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
  final List<FoodItem> items = [
    FoodItem(
        1,
        "Maqluba",
        "rice,you turn the pot upside down when serving",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcLhJZfKMziE5if_GMu-SiF09pSq8XY3KT_g&s",
        50.03,
        "Rice"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FoodItemCard(
          TheFoodItem: items[index],
        );
      },
    );
  }
}
