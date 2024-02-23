import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class PassRestScreen extends StatelessWidget {
  PassRestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
