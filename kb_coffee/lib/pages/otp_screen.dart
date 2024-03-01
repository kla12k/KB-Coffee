import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kb_coffee/pages/forgetpass.screen.dart';
import 'package:kb_coffee/pages/login_screen.dart';

class OTPSreen extends StatelessWidget {
  const OTPSreen({super.key});

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
              const Padding(
                padding: EdgeInsets.only(left: 100, top: 20, right: 80),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "OTP Verfication",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Please enter the verification code that we have sent to your phone  ',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                      TextSpan(
                        text: '+2519*******',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 58,
                      width: 54,
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(255, 119, 112, 112),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      width: 54,
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(255, 119, 112, 112),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      width: 54,
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(255, 119, 112, 112),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      width: 54,
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(255, 119, 112, 112),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend the code',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40),
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
                            builder: (context) => const ForgetScreen()),
                      );
                    },
                    child: const Text(
                      'Continue',
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
        ));
  }
}
