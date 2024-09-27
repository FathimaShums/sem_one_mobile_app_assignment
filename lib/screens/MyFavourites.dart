import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/main.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/shared/FavouritedItem.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyFavourites> createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  VoidCallback AddToCart(FoodItem item) {
    return () {
      FoodItem TheItem = FoodItem(item.id, item.title, item.description,
          item.detaileddescription, item.image, item.price, item.ItsCategory);
      cartItems.add(TheItem);
    };
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favouriteItems.length,
      itemBuilder: (context, index) {
        return AlreadyFavourited(
          TheFoodItem: favouriteItems[index],
          onAddToCart: () {
            AddToCart(favouriteItems[index]);
          },
          orientation: MediaQuery.of(context).orientation,
        );
      },
    );
  }
}
