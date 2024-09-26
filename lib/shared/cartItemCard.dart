import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart'; // Import the package
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class Cartitemcard extends StatelessWidget {
  const Cartitemcard({
    super.key,
    required this.TheCartItem,
    required this.quantity,
  });

  final FoodItem TheCartItem;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: TheCartItem.image,
          width: 80,
          height: 80,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TheCartItem.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(TheCartItem.description),
              Text('\$${TheCartItem.price.toStringAsFixed(2)}'),
              Text('Quantity: $quantity'), // Display quantity
            ],
          ),
        ),
      ],
    );
  }
}
