import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class ProductPageInfo extends StatelessWidget {
  const ProductPageInfo({
    super.key,
    required this.TheItem,
    required this.onPressed,
    required this.whenPressed,
  });

  final FoodItem TheItem;
  final VoidCallback onPressed;
  final VoidCallback whenPressed;

  @override
  Widget build(BuildContext context) {
    // Get the height of the screen
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image takes 1/3 of the screen height
            SizedBox(
              width: double.infinity,
              height: screenHeight / 3, // 1/3rd of the screen height
              child: Image.network(
                TheItem.image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            // Title
            Text(
              TheItem.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Detailed description
            Text(
              TheItem.detaileddescription,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            // Buttons in a row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onPressed,
                  child: const Text("Add to Cart"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: whenPressed,
                  child: const Text("Favourite"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
