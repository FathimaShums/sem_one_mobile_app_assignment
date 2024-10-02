import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/FoodItem.dart';
import 'package:sem_one_mobile_app_assignment/screens/landing.dart';
import 'package:sem_one_mobile_app_assignment/screens/login.dart';

List<FoodItem> cartItems = [];
List<FoodItem> favouriteItems = [];
final List<FoodItem> items = [
  FoodItem(
      1,
      "Apple Pie Cinamonn buns",
      "Tasty apple pie",
      "looks scrumptious.",
      "https://b8455d5a.rocketcdn.me/blog/wp-content/uploads/2023/09/Apple-Pie-Cinnamon-Rolls-11-720x960.jpeg",
      50.03,
      "Bread"),
  FoodItem(
      2,
      "Cream Cheese",
      "Bread",
      "",
      "https://www.tashasartisanfoods.com/blog/wp-content/uploads/2023/04/Korean-Cream-Cheese-Garlic-Bread-8.jpeg",
      50.03,
      "Bread"),
  FoodItem(
      3,
      "Burger",
      " tasty delicious burger",
      "This burger si topped with a lot of ingredients",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyMaHorBzEStwzrWGrfRMflVjt-p_zH5RBwcw3L78Z9CNsvjK29uceDTH1mmiI_8l4B2k&usqp=CAU",
      50.4,
      "Bread"),
  FoodItem(
      4,
      "Knafeh",
      "Absolutely tasty,caramelized",
      "A palestinian dish",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz8_wrK5Yt0IYeybJRoHhuprweB0vQYSVLGQ&s",
      25.7,
      "Dessert"),
  FoodItem(
      4,
      "Butter Bread",
      " moist and buttery with a golden crispy crust",
      "bread",
      "https://b8455d5a.rocketcdn.me/blog/wp-content/uploads/2024/08/Homemade-Cornbread-Recipe-10.jpg",
      20.5,
      "Bread"),
  FoodItem(
      5,
      "Chickpea salad",
      "bursting with flavours and textures",
      "bursting with flavours and textures,crunchy, spicy, and savoury snack that you’ll keep popping in your mouth by the fistful",
      "https://b8455d5a.rocketcdn.me/blog/wp-content/uploads/2015/11/Roasted-Sweet-Potato-Chickpea-Salad-2-720x960.jpg",
      25.05,
      "Salad"),
  FoodItem(
      6,
      "Mango smoothie",
      "Absolutely the best mango smoothie in the area",
      "made with KC mangoes",
      "https://b8455d5a.rocketcdn.me/blog/wp-content/uploads/2023/04/The-Perfect-Mango-Matcha-Latte-5-FEATURE-720x960.jpeg",
      30.05,
      "Drink"),
  FoodItem(
      7,
      "Hot Chocolate",
      "Even tastier than what your grandmother makes",
      "nothing needed here",
      "https://b8455d5a.rocketcdn.me/blog/wp-content/uploads/2020/12/Classic-Hot-chocolate-6-new-720x960.jpg",
      25.5,
      "Drink"),
  FoodItem(
      7,
      "Lemon rice",
      "Very tasty lemon rice",
      "",
      "https://b8455d5a.rocketcdn.me/blog/wp-content/uploads/2020/04/Lemon-Rice-1-720x924.jpg",
      35.5,
      "Rice"),
  FoodItem(
      8,
      "Falafel",
      "crispy,air fried",
      "no need ot put stuff here",
      "https://b8455d5a.rocketcdn.me/blog/wp-content/uploads/2023/10/Easy-Air-Fryer-Falafel-Recipe-9-FEATURE-720x960.jpeg",
      20.00,
      "Appetizer"),
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
            secondary: Colors.lightGreen, // Secondary color for light theme
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
            primary: Colors.greenAccent[700], // Primary color for dark theme
            secondary: Colors.green, // Secondary color for dark theme
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
