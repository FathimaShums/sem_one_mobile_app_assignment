import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class FoodItemCard extends StatefulWidget {
  const FoodItemCard(
      {super.key,
      required this.TheFoodItem,
      required this.onPressed,
      required this.whenPressed,
      required this.onViewMore});
  final FoodItem TheFoodItem;
  final VoidCallback onPressed;
  final VoidCallback whenPressed;
  final VoidCallback onViewMore;

  @override
  State<FoodItemCard> createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section with fixed height/width and responsive layout
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                widget.TheFoodItem.image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16), // Add spacing between image and text
            // Text and buttons column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.TheFoodItem.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.TheFoodItem.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      // Add to Cart button
                      ElevatedButton(
                        onPressed: widget.onPressed,
                        child: const Text("Add to Cart"),
                      ),
                      const SizedBox(width: 8),
                      // Favourite button
                      ElevatedButton(
                        onPressed: widget.whenPressed,
                        child: const Text("Favourite"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // View More button with VoidCallback
                  GestureDetector(
                    onTap: widget.onViewMore,
                    child: Text(
                      "View More",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
