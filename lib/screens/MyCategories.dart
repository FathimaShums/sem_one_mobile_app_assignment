import 'package:flutter/material.dart';

class MyCategories extends StatelessWidget {
  const MyCategories({super.key, required this.orientation});
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Text(orientation == Orientation.portrait
        ? 'my categories in potrait mode'
        : 'my Categories Page');
  }
}
