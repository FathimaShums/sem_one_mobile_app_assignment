import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class AlreadyFavourited extends StatelessWidget {
  const AlreadyFavourited({
    super.key,
    required this.TheFoodItem,
    required this.onAddToCart,
    required this.orientation,
  });

  final FoodItem TheFoodItem;
  final VoidCallback onAddToCart;

  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: orientation == Orientation.landscape
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.3,
                    child: Image.network(
                      TheFoodItem.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    TheFoodItem.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    TheFoodItem.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Flexible(
                        child: ElevatedButton(
                          onPressed: onAddToCart,
                          child: const Text("Add to Cart"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.2,
                    child: Image.network(
                      TheFoodItem.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TheFoodItem.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          TheFoodItem.description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Flexible(
                              child: ElevatedButton(
                                onPressed: onAddToCart,
                                child: const Text("Add to Cart"),
                              ),
                            ),
                          ],
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
