import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/main.dart';
import 'package:sem_one_mobile_app_assignment/shared/FoodItemCard.dart';
import 'package:sem_one_mobile_app_assignment/shared/cartItemCard.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  // This function calculates the total price of items in the cart
  double getTotalPrice() {
    double total = 0;
    for (var item in cartItems) {
      total += item.price;
    }
    return total;
  }

  // This function groups the cart items by their ID and counts the occurrences
  Map<int, Map<FoodItem, int>> getCartItemsWithQuantities() {
    Map<int, Map<FoodItem, int>> cartMap = {};

    for (var item in cartItems) {
      if (cartMap.containsKey(item.id)) {
        cartMap[item.id] = {item: cartMap[item.id]!.values.first + 1};
      } else {
        cartMap[item.id] = {item: 1};
      }
    }

    return cartMap;
  }

  @override
  Widget build(BuildContext context) {
    final cartMap = getCartItemsWithQuantities();

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: cartMap.length,
              itemBuilder: (context, index) {
                final item = cartMap.values.elementAt(index).keys.first;
                final quantity = cartMap.values.elementAt(index).values.first;
                return Cartitemcard(
                  TheCartItem: item,
                  quantity: quantity,
                  orientation: widget.orientation,
                );
              }),
        ),
        // Display total price at the bottom
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${getTotalPrice().toStringAsFixed(2)}', // Display the total price
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
