import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class FoodItemCard extends StatefulWidget {
  const FoodItemCard({
    super.key,
    required this.TheFoodItem,
    required this.onPressed,
    required this.whenPressed,
    // required this.onViewMore,
    required this.orientation,
  });

  final FoodItem TheFoodItem;
  final VoidCallback onPressed;
  final VoidCallback whenPressed;
  // final VoidCallback onViewMore;
  final Orientation orientation;

  @override
  State<FoodItemCard> createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size using MediaQuery
    var screenSize = MediaQuery.of(context).size;

    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget.orientation == Orientation.landscape
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1st child: Responsive Image (Using percentage of screen width)
                  SizedBox(
                    width: screenSize.width * 0.8, // 80% of screen width
                    height: screenSize.height * 0.3, // 30% of screen height
                    child: Image.network(
                      widget.TheFoodItem.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // 2nd child: Title
                  Text(
                    widget.TheFoodItem.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // 3rd child: Description
                  Text(
                    widget.TheFoodItem.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // 4th child: Row with buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Add to Cart button (Use Flexible for responsiveness)
                      Flexible(
                        child: ElevatedButton(
                          onPressed: widget.onPressed,
                          child: const Text("Add to Cart"),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Favourite button (Use Flexible for responsiveness)
                      Flexible(
                        child: ElevatedButton(
                          onPressed: widget.whenPressed,
                          child: const Text("Favourite"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // 5th child: View More link
                  // GestureDetector(
                  //   onTap: widget.onViewMore,
                  //   child: Text(
                  //     "View More",
                  //     style: TextStyle(
                  //       fontSize: 14,
                  //       color: Theme.of(context).primaryColor,
                  //       decoration: TextDecoration.underline,
                  //     ),
                  //   ),
                  // ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Responsive Image section with flexible height/width
                  SizedBox(
                    width: screenSize.width * 0.3, // 30% of screen width
                    height: screenSize.height * 0.2, // 20% of screen height
                    child: Image.network(
                      widget.TheFoodItem.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                      width: 16), // Add spacing between image and text

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
                            // Add to Cart button (Use Flexible for responsiveness)
                            Flexible(
                              child: ElevatedButton(
                                onPressed: widget.onPressed,
                                child: const Text("Add to Cart"),
                              ),
                            ),
                            const SizedBox(width: 8),
                            // Favourite button (Use Flexible for responsiveness)
                            Flexible(
                              child: ElevatedButton(
                                onPressed: widget.whenPressed,
                                child: const Text("Favourite"),
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
