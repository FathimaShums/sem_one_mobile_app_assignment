import 'package:flutter/material.dart';
import 'package:sem_one_mobile_app_assignment/models/TheCategory.dart';
import 'package:sem_one_mobile_app_assignment/screens/login.dart';

import 'package:sem_one_mobile_app_assignment/shared/Acategory.dart';

class MyCategories extends StatelessWidget {
  const MyCategories({super.key, required this.orientation});
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return orientation == Orientation.portrait
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ACategory(
                    CategoryItem: TheCategory(
                      "Bread",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQUbOk2IklYhD0xLLk7PnCqKqZnkeEeIcYSQ&s",
                    ),
                    navigateToPage: "Breads",
                  ),
                  ACategory(
                      CategoryItem: TheCategory(
                        "Bread",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQUbOk2IklYhD0xLLk7PnCqKqZnkeEeIcYSQ&s",
                      ),
                      navigateToPage: "Breads"),
                  ACategory(
                      CategoryItem: TheCategory(
                        "Salads",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s",
                      ),
                      navigateToPage: "Salads"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ACategory(
                      CategoryItem: TheCategory(
                        "Rice",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQUbOk2IklYhD0xLLk7PnCqKqZnkeEeIcYSQ&s",
                      ),
                      navigateToPage: "Rice"),
                  ACategory(
                      CategoryItem: TheCategory(
                        "Rice",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s",
                      ),
                      navigateToPage: "Sweets"),
                  ACategory(
                      CategoryItem: TheCategory(
                        "Rice",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s",
                      ),
                      navigateToPage: "Appetizers"),
                ],
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: ACategory(
                        CategoryItem: TheCategory(
                          "Rice",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s",
                        ),
                        navigateToPage: "Rice"),
                  ),
                  Flexible(
                    child: ACategory(
                        CategoryItem: TheCategory(
                          "Bread",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQUbOk2IklYhD0xLLk7PnCqKqZnkeEeIcYSQ&s",
                        ),
                        navigateToPage: "Rice"),
                  ),
                  Flexible(
                    child: ACategory(
                        CategoryItem: TheCategory(
                          "Salads",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s",
                        ),
                        navigateToPage: "Rice"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: ACategory(
                        CategoryItem: TheCategory(
                          "Pasta",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-Lm7b6Kw7Z3tIxKZFFS0gV-jWDh9ozpORQ&s",
                        ),
                        navigateToPage: "Rice"),
                  ),
                  Flexible(
                    child: ACategory(
                        CategoryItem: TheCategory(
                          "Pizza",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQUbOk2IklYhD0xLLk7PnCqKqZnkeEeIcYSQ&s",
                        ),
                        navigateToPage: "Rice"),
                  ),
                ],
              ),
            ],
          );
  }
}
