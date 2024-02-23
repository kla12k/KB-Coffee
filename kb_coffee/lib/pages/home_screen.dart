import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
