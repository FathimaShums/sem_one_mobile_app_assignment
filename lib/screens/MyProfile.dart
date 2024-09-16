import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return const Text("my Profile Page");
  }
}
