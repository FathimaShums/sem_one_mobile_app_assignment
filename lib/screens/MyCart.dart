import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/main.dart';
import 'package:sem_one_mobile_app_assignment/shared/FoodItemCard.dart';
import 'package:sem_one_mobile_app_assignment/shared/cartItemCard.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    //final cartItems = CartState.of(context)?.cartItems ?? [];
    return ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Cartitemcard(
            TheCartItem: cartItems[index],
          );
        });
  }
}
