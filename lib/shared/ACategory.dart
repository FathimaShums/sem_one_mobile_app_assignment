import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/TheCategory.dart';

class ACategory extends StatelessWidget {
  const ACategory({
    super.key,
    required this.CategoryItem,
  });
  final TheCategory CategoryItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: GestureDetector(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  child: Image(
                    image: NetworkImage(CategoryItem.image),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    15.0), // Match the image's borderRadius
                child: Container(
                  color: Colors.black.withOpacity(0.9), // Adjust opacity here
                ),
              ),
              Text(
                CategoryItem.title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
