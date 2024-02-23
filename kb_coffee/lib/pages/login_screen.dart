import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/resetpassword_screen.dart';
import 'package:kb_coffee/pages/screen_holder.dart';
import 'package:kb_coffee/pages/signup_screen.dart';
import 'package:passwordfield/passwordfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height * 6,
            width: MediaQuery.of(context).size.width * 6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  //sssss     const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),

                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.7),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.7),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.8),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.8),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.9),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.9),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.9),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(1),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(1),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(1),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(1),
                ],
              ),
              image: const DecorationImage(
                  image: AssetImage("assets/images/bg2.png"), fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: Column(children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Column(children: [
                      const Text('Sign In',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                              color: Colors.white,
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
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'please enter your number',
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
                            "Password",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 20),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 2,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: PasswordField(
                              passwordConstraint: r'.*[@$#.*].*',
                              hintText: 'Enter your password',
                              errorMessage:
                                  'must contain special character either . * @ # \$',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(height: 30),
                            Align(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PassRestScreen()),
                                  );
                                },
                                child: const Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: SizedBox(
                          width: 200,
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
                                    builder: (context) => ScreenHolder()),
                              );
                            },
                            child: const Text(
                              'Sign in',
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
                      Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't you have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color?>(
                                          Colors.transparent),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupScreen()),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ]),
                  ),
                ),
              ]),
            )));
  }
}
