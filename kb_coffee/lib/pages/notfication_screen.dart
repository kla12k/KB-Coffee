import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/login_screen.dart';
import 'package:kb_coffee/pages/resetpassword_screen.dart';
import 'package:kb_coffee/pages/screen_holder.dart';
import 'package:kb_coffee/pages/signup_screen.dart';
import 'package:passwordfield/passwordfield.dart';

class Notify extends StatelessWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Align(
            alignment: Alignment.center,
            child: Text(
              "Notifications",
              style: TextStyle(
                color: Color.fromARGB(255, 17, 23, 23),
                fontSize: 30,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
                height: 0,
              ),
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
        ),
        body: Container(
          child: Container(
              height: MediaQuery.of(context).size.height * 6,
              width: MediaQuery.of(context).size.width * 6,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/bg2.png"),
                    fit: BoxFit.fill),
              ),
              child: SingleChildScrollView(
                child: Column(children: []),
              )),
        ));
  }
}
