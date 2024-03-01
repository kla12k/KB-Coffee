import 'dart:ffi';

import 'package:flutter/material.dart';

class LikedDrink {
  final String name;
  final String iconPath;
  final double price;
  final double rate;
  final String description;

  LikedDrink({
    required this.name,
    required this.iconPath,
    required this.price,
    required this.rate,
    required this.description,
  });

  static List<LikedDrink> getlikeddrink() {
    List<LikedDrink> categories = [];

    categories.add(LikedDrink(
      name: 'Coffee',
      iconPath: 'assets/icons/h.jpg',
      price: 59.99,
      rate: 4.5,
      description: 'A hot drink made from roasted coffee beans.',
    ));

    categories.add(LikedDrink(
      name: 'Ice Coffee',
      iconPath: 'assets/icons/cold-coffee.jpg',
      price: 99.99,
      rate: 4.0,
      description: 'Coffee that is served cold.',
    ));

    categories.add(LikedDrink(
      name: 'Hot Chocolate',
      iconPath: 'assets/icons/sm.png',
      price: 29.99,
      rate: 4.5,
      description: 'A hot drink made from chocolate and milk.',
    ));

    categories.add(LikedDrink(
      name: 'Hot Milk',
      iconPath: 'assets/icons/oth.png',
      price: 79.99,
      rate: 3.5,
      description: 'A hot drink made from milk.',
    ));

    categories.add(LikedDrink(
      name: 'Mocha',
      iconPath: 'assets/icons/h.jpg',
      price: 59.99,
      rate: 4.3,
      description: 'A coffee drink made with chocolate.',
    ));

    categories.add(LikedDrink(
      name: 'Ice Tea',
      iconPath: 'assets/icons/cold-coffee.jpg',
      price: 149.99,
      rate: 4.0,
      description:
          'Iced tea is a fermented tea that has been cooled or served with ice.',
    ));

    categories.add(LikedDrink(
      name: 'Smoothies',
      iconPath: 'assets/icons/sm.png',
      price: 89.99,
      rate: 4.3,
      description:
          'A smoothie is a blended and sometimes sweetened beverage made from fresh fruit, vegetables, and sometimes dairy products.',
    ));

    categories.add(LikedDrink(
      name: 'Hot Toddy',
      iconPath: 'assets/icons/oth.png',
      price: 49.99,
      rate: 4.5,
      description:
          'A hot toddy is a mixed drink made of liquor and water with honey and spices and served hot.',
    ));

    categories.add(LikedDrink(
      name: 'Green Tea',
      iconPath: 'assets/icons/h.jpg',
      price: 39.99,
      rate: 4.5,
      description:
          'Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong and black tea.',
    ));

    return categories;
  }
}
