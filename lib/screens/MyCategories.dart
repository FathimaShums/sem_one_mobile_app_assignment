import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/TheCategory.dart';
import 'package:sem_one_mobile_app_assignment/shared/Acategory.dart';

class MyCategories extends StatelessWidget {
  const MyCategories({super.key, required this.orientation});
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      orientation == Orientation.portrait
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ACategory(
                      CategoryItem: TheCategory("Rice",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s"),
                    ),
                    ACategory(
                      CategoryItem: TheCategory("Bread",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQUbOk2IklYhD0xLLk7PnCqKqZnkeEeIcYSQ&s"),
                    ),
                    ACategory(
                      CategoryItem: TheCategory("Salads",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ACategory(
                      CategoryItem: TheCategory("Rice",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQUbOk2IklYhD0xLLk7PnCqKqZnkeEeIcYSQ&s"),
                    ),
                    ACategory(
                      CategoryItem: TheCategory("Rice",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s"),
                    ),
                    ACategory(
                      CategoryItem: TheCategory("Rice",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s"),
                    ),
                  ],
                )
              ],
            )
          : Text("this is for the landscape"),
    ]);
    // Text(orientation == Orientation.portrait
    //     ? 'my categories in potrait mode'
    //     : 'my Categories Page');
  }
}
