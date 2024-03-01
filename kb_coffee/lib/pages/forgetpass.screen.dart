import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kb_coffee/pages/login_screen.dart';
import 'package:passwordfield/passwordfield.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  //sssss     const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),

                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.7),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.7),
                  const Color.fromARGB(255, 137, 75, 17).withOpacity(0.7),
                ],
              ),
              image: const DecorationImage(
                  image: AssetImage("assets/images/bg2.png"),
                  fit: BoxFit.cover),
            ),
          ),
          title: Align(
              alignment: Alignment.center,
              child: Text(
                "",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 23, 23),
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
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
                image: AssetImage("assets/images/bg2.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 100, top: 20, right: 80),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " New Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: PasswordField(
                    passwordConstraint: r'.*[@$#.*].*',
                    hintText: '     ***********',
                    errorMessage:
                        'must contain special character either . * @ # \$',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Confirm password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: PasswordField(
                    passwordConstraint: r'.*[@$#.*].*',
                    hintText: '     ***********',
                    errorMessage:
                        'must contain special character either . * @ # \$',
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: SizedBox(
                  width: 20000,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF282828),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // final email = emailController.text.trim();
                      // final password = passwordController.text.trim();
                      // final firstname = firstnameController.text.trim();
                      // final lastname = lastnameController.text.trim();
                      // final confirmpassword =
                      //     confirmpasswordController.text.trim();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 25),
            ],
          ),
        ));
  }
}
