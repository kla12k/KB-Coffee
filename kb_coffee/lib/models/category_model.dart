import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Hot Drinks',
        iconPath: 'assets/icons/h.jpg',
        boxColor: Color.fromARGB(255, 137, 75, 17)));

    categories.add(CategoryModel(
        name: 'Cold Drinks',
        iconPath: 'assets/icons/cold-coffee.jpg',
        boxColor: Color.fromARGB(155, 137, 75, 17)));

    categories.add(CategoryModel(
        name: 'Smoothies',
        iconPath: 'assets/icons/sm.png',
        boxColor: Color.fromARGB(255, 137, 75, 17)));

    categories.add(CategoryModel(
        name: 'Other Drinks',
        iconPath: 'assets/icons/oth.png',
        boxColor: Color.fromARGB(155, 137, 75, 17)));

    return categories;
  }
}
