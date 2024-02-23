import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/fav_screen.dart';
import 'package:kb_coffee/pages/home_screen.dart';
import 'package:kb_coffee/pages/menu_screen.dart';

class ScreenHolder extends StatefulWidget {
  ScreenHolder({super.key});

  @override
  State<ScreenHolder> createState() => _ScreenHolder();
}

class _ScreenHolder extends State<ScreenHolder> {
  int ci = 0; //current index=ci

  final tabs = [HomeScreen(), FavScreen(), MenuScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[ci],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Favorites",
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(Icons.menu),
            ),
          ],
          currentIndex: ci,
          onTap: (index) {
            setState(() {
              ci = index;
            });
          },
          selectedItemColor: Colors.black),
    );
  }
}
