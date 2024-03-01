import 'dart:ffi';

import 'package:flutter/material.dart';

class HotDrinkModel {
  final String name;
  final String iconPath;
  final double price;
  final double rate;
  final String description;

  HotDrinkModel({
    required this.name,
    required this.iconPath,
    required this.price,
    required this.rate,
    required this.description,
  });

  static List<HotDrinkModel> gethotdrink() {
    List<HotDrinkModel> categories = [];

    categories.add(HotDrinkModel(
      name: 'Coffee',
      iconPath: 'assets/icons/h.jpg',
      price: 59.99,
      rate: 4.5,
      description: 'A hot drink made from roasted coffee beans.',
    ));

    categories.add(HotDrinkModel(
      name: 'Ice Coffee',
      iconPath: 'assets/icons/cold-coffee.jpg',
      price: 99.99,
      rate: 4.0,
      description: 'Coffee that is served cold.',
    ));

    categories.add(HotDrinkModel(
      name: 'Hot Chocolate',
      iconPath: 'assets/icons/sm.png',
      price: 29.99,
      rate: 4.5,
      description: 'A hot drink made from chocolate and milk.',
    ));

    categories.add(HotDrinkModel(
      name: 'Hot Milk',
      iconPath: 'assets/icons/oth.png',
      price: 79.99,
      rate: 3.5,
      description: 'A hot drink made from milk.',
    ));

    categories.add(HotDrinkModel(
      name: 'Mocha',
      iconPath: 'assets/icons/h.jpg',
      price: 59.99,
      rate: 4.3,
      description: 'A coffee drink made with chocolate.',
    ));

    categories.add(HotDrinkModel(
      name: 'Ice Tea',
      iconPath: 'assets/icons/cold-coffee.jpg',
      price: 149.99,
      rate: 4.0,
      description:
          'Iced tea is a fermented tea that has been cooled or served with ice.',
    ));

    categories.add(HotDrinkModel(
      name: 'Smoothies',
      iconPath: 'assets/icons/sm.png',
      price: 89.99,
      rate: 4.3,
      description:
          'A smoothie is a blended and sometimes sweetened beverage made from fresh fruit, vegetables, and sometimes dairy products.',
    ));

    categories.add(HotDrinkModel(
      name: 'Hot Toddy',
      iconPath: 'assets/icons/oth.png',
      price: 49.99,
      rate: 4.5,
      description:
          'A hot toddy is a mixed drink made of liquor and water with honey and spices and served hot.',
    ));

    categories.add(HotDrinkModel(
      name: 'Green Tea',
      iconPath: 'assets/icons/h.jpg',
      price: 39.99,
      rate: 4.5,
      description:
          'Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong and black tea.',
    ));

    categories.add(HotDrinkModel(
      name: 'Chai Latte',
      iconPath: 'assets/icons/h.jpg',
      price: 49.99,
      rate: 4.3,
      description:
          'A chai latte is a beverage that consists of black tea that is steeped with spices and then sweetened with honey or sugar and topped with frothed milk.',
    ));

    categories.add(HotDrinkModel(
      name: 'Matcha Latte',
      iconPath: 'assets/icons/h.jpg',
      price: 59.99,
      rate: 4.7,
      description:
          'A matcha latte is a drink made with matcha green tea and steamed milk.',
    ));

    categories.add(HotDrinkModel(
      name: 'Hot Toddy',
      iconPath: 'assets/icons/h.jpg',
      price: 69.99,
      rate: 4.2,
      description:
          'A hot toddy is a mixed drink made of liquor and water with honey and spices and served hot.',
    ));

    categories.add(HotDrinkModel(
      name: 'Chamomile Tea',
      iconPath: 'assets/icons/h.jpg',
      price: 29.99,
      rate: 4.6,
      description:
          'Chamomile tea is a type of herbal tea made from dried chamomile flowers.',
    ));

    categories.add(HotDrinkModel(
      name: 'Turmeric Latte',
      iconPath: 'assets/icons/h.jpg',
      price: 49.99,
      rate: 4.4,
      description:
          'A turmeric latte is a drink made with turmeric, milk, and sweetener.',
    ));

    categories.add(HotDrinkModel(
      name: 'Chai Tea',
      iconPath: 'assets/icons/h.jpg',
      price: 39.99,
      rate: 4.7,
      description:
          'Chai tea is a beverage made by brewing black tea with a mixture of aromatic Indian spices and herbs.',
    ));

    categories.add(HotDrinkModel(
      name: 'Mulled Wine',
      iconPath: 'assets/icons/h.jpg',
      price: 79.99,
      rate: 4.8,
      description:
          'Mulled wine is a hot drink made with red wine and various mulling spices and sometimes raisins.',
    ));

    categories.add(HotDrinkModel(
      name: 'Hot Chocolate',
      iconPath: 'assets/icons/h.jpg',
      price: 69.99,
      rate: 4.7,
      description: 'A hot drink made from chocolate and milk.',
    ));

    categories.add(HotDrinkModel(
      name: 'Eggnog',
      iconPath: 'assets/icons/h.jpg',
      price: 59.99,
      rate: 4.4,
      description:
          'Eggnog is a chilled, sweetened, dairy-based beverage traditionally made with milk, cream, sugar, whipped eggs, and spices such as nutmeg.',
    ));

    return categories;
  }
}
