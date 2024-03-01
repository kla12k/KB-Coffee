import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/login_screen.dart';
import 'package:kb_coffee/pages/otp_screen.dart';

class PassRestScreen extends StatelessWidget {
  const PassRestScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                image: AssetImage("assets/images/bg2.png"), fit: BoxFit.cover),
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
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 100),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Reset Your Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Forgot your password? No Problem you can change your password here. you just need to enter the phone number you registerd with then an otp message will be sent to you.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat'),
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
                    side: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: ' Enter your phone  number ',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
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
                      MaterialPageRoute(builder: (context) => const OTPSreen()),
                    );
                  },
                  child: const Text(
                    'Send Otp',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
