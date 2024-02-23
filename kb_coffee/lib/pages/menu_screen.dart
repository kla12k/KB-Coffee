import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              iconSize: 50,
              icon: Icon(
                Icons.account_circle,
              ),
              onPressed: () {},
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                iconSize: 35,
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Container(
            height: MediaQuery.of(context).size.height * 6,
            width: MediaQuery.of(context).size.width * 6,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/bg2.png"), fit: BoxFit.fill),
            ),
            child: Column(children: [])));
  }
}
