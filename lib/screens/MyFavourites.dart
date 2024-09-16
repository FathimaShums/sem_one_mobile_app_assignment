import 'package:flutter/material.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyFavourites> createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  Widget build(BuildContext context) {
    return const Text("my Favourites Page");
  }
}
