import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/screens/landing.dart';
import 'package:sem_one_mobile_app_assignment/screens/login.dart';

List<FoodItem> cartItems = [];
List<FoodItem> favouriteItems = [];
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
          useMaterial3: true, // Enable Material 3
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
