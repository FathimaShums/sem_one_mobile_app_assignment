import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class Cartitemcard extends StatelessWidget {
  const Cartitemcard({super.key, required this.TheCartItem});
  final FoodItem TheCartItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: NetworkImage(TheCartItem.image),
        ),
        Column(
          children: [
            Text(TheCartItem.title),
            Text(TheCartItem.description),

            // Text(widget.TheFoodItem.price as String),
          ],
        )
      ],
    );
  }
}
