import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/screens/landing.dart';
import 'package:sem_one_mobile_app_assignment/screens/login.dart';

List<FoodItem> cartItems = [];
List<FoodItem> favouriteItems = [];
final List<FoodItem> items = [
  FoodItem(
      1,
      "Maqluba",
      "rice, you turn the pot upside down when serving",
      "Includes fried vegetables such as eggplant, cauliflower, and potatoes, arranged in a pot before being cooked and inverted for presentation",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC7yHnSVgsZqy1WQEsiT-Dgjj1NjpxjrpZWA&s",
      50.03,
      "Rice"),
  FoodItem(
      2,
      "Cream Cheese",
      "Bread",
      "",
      "https://www.tashasartisanfoods.com/blog/wp-content/uploads/2023/04/Korean-Cream-Cheese-Garlic-Bread-8.jpeg",
      50.03,
      "Breads"),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            primary: Colors.green, // Primary color for light theme
            secondary: Colors.greenAccent, // Secondary color for light theme
          ),
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor:
                Colors.greenAccent[700], // Active icon color in dark mode
            unselectedItemColor:
                Colors.grey, // Inactive icon color in dark mode
          ),
          iconTheme: IconThemeData(
            color: Colors.white, // Default icon color for dark mode
          ), // Enable Material 3
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            brightness: Brightness.dark, // Dark mode settings
            primary: Colors.green[800], // Primary color for dark theme
            secondary:
                Colors.greenAccent[700], // Secondary color for dark theme
          ),
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor:
                Colors.greenAccent[700], // Active icon color in dark mode
            unselectedItemColor:
                Colors.white, // Inactive icon color in dark mode
          ),
          iconTheme: IconThemeData(
            color: Colors.white, // Default icon color for dark mode
          ),
          //useMaterial3: true, // Enable Material 3 for dark theme
        ),
        themeMode:
            ThemeMode.system, // Automatically switch based on device settings

        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
