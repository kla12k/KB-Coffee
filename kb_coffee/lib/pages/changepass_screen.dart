import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/login_screen.dart';
import 'package:kb_coffee/pages/resetpassword_screen.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:passwordfield/passwordfield.dart';

class PasswordChange extends StatelessWidget {
  final oldpasswordController = TextEditingController();
  final newpasswordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Change Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Old Password",
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
                  controller: oldpasswordController,
                  passwordConstraint: r'.*[@$#.*].*',
                  hintText: '     ***********',
                  errorMessage:
                      'must contain special character either . * @ # \$',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
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
                  controller: oldpasswordController,
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
                  controller: confirmpasswordController,
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
                    'Save Changes',
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
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color?>(
                      Colors.transparent,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PassRestScreen()));
                  },
                  child: const Text(
                    "    Forgot password?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
