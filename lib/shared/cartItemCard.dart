import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';

class Cartitemcard extends StatelessWidget {
  const Cartitemcard({
    super.key,
    required this.TheCartItem,
    required this.quantity,
    required this.orientation,
  });

  final FoodItem TheCartItem;
  final int quantity;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenSize = MediaQuery.of(context).size;
    final isLandscape = orientation == Orientation.landscape;

    // Calculate sizes based on screen width
    double imageSize =
        isLandscape ? screenSize.width * 0.2 : screenSize.width * 0.15;
    double titleFontSize = isLandscape ? 18.0 : 16.0;
    double descriptionFontSize = isLandscape ? 16.0 : 14.0;
    double priceFontSize = isLandscape ? 18.0 : 16.0;
    double quantityFontSize = isLandscape ? 16.0 : 14.0;

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Cached Network Image
          CachedNetworkImage(
            imageUrl: TheCartItem.image,
            width: imageSize,
            height: imageSize,
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: titleFontSize,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  TheCartItem.description,
                  style: TextStyle(
                    fontSize: descriptionFontSize,
                    color: Colors.grey[600],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Text(
                  '\$${TheCartItem.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: priceFontSize,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Quantity: $quantity',
                  style: TextStyle(
                    fontSize: quantityFontSize,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
