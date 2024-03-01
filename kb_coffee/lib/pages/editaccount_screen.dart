import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/login_screen.dart';
import 'package:kb_coffee/pages/resetpassword_screen.dart';
import 'package:kb_coffee/pages/screen_holder.dart';
import 'package:kb_coffee/pages/signup_screen.dart';
import 'package:passwordfield/passwordfield.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({Key? key}) : super(key: key);

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
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Column(children: [
                      const SizedBox(height: 30),
                      const Text('Change Account \nInformation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Full Name",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25),
                        child: Container(
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25),
                        child: Container(
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25),
                        child: Container(
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'please enter your Email',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF282828),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditAccount()),
                              );
                            },
                            child: const Text(
                              'Save changes',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ]),
                  ),
                ]),
              )),
        ));
  }
}
