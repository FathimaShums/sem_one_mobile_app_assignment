import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return const Text("my Cart ");
  }
}
