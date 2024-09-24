import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class FoodItemCard extends StatefulWidget {
  const FoodItemCard(
      {super.key,
      required this.TheFoodItem,
      required this.onPressed,
      required this.whenPressed});
  final FoodItem TheFoodItem;
  final VoidCallback onPressed;
  final VoidCallback whenPressed;

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
            ElevatedButton(
              onPressed: widget.onPressed,
              child: Text("Add to Cart"),
            ),
            ElevatedButton(
              onPressed: widget.whenPressed,
              child: Text("Favourite"),
            ),
            // Text(widget.TheFoodItem.price as String),
          ],
        )
      ],
    );
  }
}
