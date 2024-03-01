import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/fav_screen.dart';
import 'package:kb_coffee/pages/home_screen.dart';
import 'package:kb_coffee/pages/menu_screen.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ScreenHolder extends StatefulWidget {
  const ScreenHolder({super.key});

  @override
  State<ScreenHolder> createState() => _ScreenHolder();
}

class _ScreenHolder extends State<ScreenHolder> {
  int ci = 0; //current index=ci

  final tabs = [HomeScreen(), FavScreen(), const MenuScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[ci],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: SalomonBottomBar(
            currentIndex: ci,
            onTap: (int index) {
              setState(() {
                ci = index;
              });
            },
            items: [
              SalomonBottomBarItem(
                selectedColor: const Color.fromARGB(255, 137, 75, 17),
                unselectedColor: Colors.grey,
                icon: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              SalomonBottomBarItem(
                selectedColor: const Color.fromARGB(255, 137, 75, 17),
                unselectedColor: Colors.grey,
                icon: const Icon(Icons.favorite),
                title: const Text("Favorite"),
              ),
              SalomonBottomBarItem(
                selectedColor: const Color.fromARGB(255, 137, 75, 17),
                unselectedColor: Colors.grey,
                icon: const Icon(Icons.menu),
                title: const Text("Menu"),
              )
            ]),
      ),
    );
  }
}
