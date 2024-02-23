import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 6,
        width: MediaQuery.of(context).size.width * 6,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                //sssss     const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),

                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.1),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.2),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.3),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.4),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.5),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.6),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.7),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.8),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(0.9),
                const Color.fromARGB(255, 137, 75, 17).withOpacity(1),
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text(
                      'Enjoy quality brew with \nthe finest of \nflavours',
                      style: TextStyle(
                        color: const Color(0xFFF4DDC7),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Column(children: [
                    const Align(
                      child: Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Text(
                          'The best of its kind you can ever get with exquisite taste and quality flavours.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                          child: const Text(
                            'Get Started',
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
                      height: 60,
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
