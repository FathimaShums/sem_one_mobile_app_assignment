import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/TheCategory.dart';

class ACategory extends StatelessWidget {
  const ACategory({
    super.key,
    required this.CategoryItem,
    required this.navigateToPage, // This is the page you want to navigate to
  });

  final TheCategory CategoryItem;
  final Widget navigateToPage; // The widget/page to navigate to

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigating to the respective page when tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigateToPage),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              image: NetworkImage(CategoryItem.image),
              fit: BoxFit.cover,
              width: 150, // You can adjust the width and height
              height: 150,
            ),
          ),
          ClipRRect(
            borderRadius:
                BorderRadius.circular(15.0), // Match the image's borderRadius
            child: Container(
              color: Colors.black.withOpacity(0.6), // Adjust opacity
              width: 150,
              height: 150,
            ),
          ),
          Text(
            CategoryItem.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
