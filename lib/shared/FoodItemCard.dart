import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class FoodItemCard extends StatefulWidget {
  const FoodItemCard({super.key, required this.TheFoodItem});
  final FoodItem TheFoodItem;

  @override
  State<FoodItemCard> createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: NetworkImage(widget.TheFoodItem.image),
        ),
        Column(
          children: [
            Text(widget.TheFoodItem.title),
            Text(widget.TheFoodItem.description),
            // Text(widget.TheFoodItem.price as String),
          ],
        )
      ],
    );
  }
}
