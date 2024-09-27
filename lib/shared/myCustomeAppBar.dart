import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar(
      {super.key, required this.selectedCategory, required this.onMenuTap});
  final String selectedCategory;
  final Function onMenuTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(selectedCategory),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
