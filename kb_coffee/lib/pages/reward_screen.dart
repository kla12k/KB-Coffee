import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:scratcher/scratcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

import 'package:confetti/confetti.dart';

class CouponAndReward extends StatefulWidget {
  const CouponAndReward({Key? key}) : super(key: key);

  @override
  State<CouponAndReward> createState() => _CouponAndRewardState();
}

class _CouponAndRewardState extends State<CouponAndReward> {
  int _type = 1;
  final pointsTween = Tween<double>(begin: 0, end: 1);
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });
  late ConfettiController _controllerCenterRight;
  late ConfettiController _controllerCenterLeft;

  int _start = 5;
  bool _disposed = false;

  @override
  void initState() {
    super.initState();
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenterLeft =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenterRight.play();
    _controllerCenterLeft.play();
  }

  @override
  Widget build(BuildContext context) {
    _controllerCenterRight.play();
    _controllerCenterLeft.play();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Coupon and reward',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => _handleRadio(1),
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: _type == 1 ? Colors.black : Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => _handleRadio(2),
                      child: Text(
                        'Progress',
                        style: TextStyle(
                          color: _type == 2 ? Colors.black : Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: _type == 1
                    ? ResponsiveGridList(
                        minItemWidth: 280,
                        maxItemsPerRow: 400,
                        horizontalGridSpacing: 20,
                        verticalGridSpacing: 20,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/c1.jpg",
                                      width: double.infinity,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Free Coffee",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Get a free coffee when you buy 5 coffee.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      child: Text(
                                        "Use Code: sdfg",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/c222.jpg",
                                      width: double.infinity,
                                      height: 160,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "45% Discount",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Get a 45% discount on your next purchase.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      child: Text(
                                        "Use Code: DISCOUNT40",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 137, 75, 17),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Scratcher(
                                        brushSize: 30,
                                        threshold: 50,
                                        child: Image.asset(
                                          'assets/images/c222.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                        onChange: (value) =>
                                            print("Scratch progress: $value%"),
                                        onThreshold: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text('Congratulations!'),
                                                content: Stack(
                                                  children: <Widget>[
                                                    Container(
                                                        width: 60,
                                                        height: 80,
                                                        child: Text(
                                                            "You won ....")),
                                                    Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child:
                                                                ConfettiWidget(
                                                              confettiController:
                                                                  _controllerCenterRight,
                                                              blastDirection:
                                                                  pi, // radial value - LEFT
                                                              particleDrag:
                                                                  0.05, // apply drag to the confetti
                                                              emissionFrequency:
                                                                  0.05, // how often it should emit
                                                              numberOfParticles:
                                                                  20, // number of particles to emit
                                                              gravity:
                                                                  0.05, // gravity - or fall speed
                                                              shouldLoop: false,
                                                              colors: const [
                                                                Colors.green,
                                                                Colors.blue,
                                                                Colors.pink,
                                                                Colors.yellow,
                                                                Colors.red
                                                              ], // manually specify the colors to be used
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child:
                                                                ConfettiWidget(
                                                              confettiController:
                                                                  _controllerCenterLeft,
                                                              blastDirection:
                                                                  0, // radial value - RIGHT
                                                              emissionFrequency:
                                                                  0.6,
                                                              minimumSize:
                                                                  const Size(10,
                                                                      10), // set the minimum potential size for the confetti (width, height)
                                                              maximumSize:
                                                                  const Size(50,
                                                                      50), // set the maximum potential size for the confetti (width, height)
                                                              numberOfParticles:
                                                                  1,
                                                              gravity: 0.1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    child: Text('OK'),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  )
                                                ],
                                              );
                                            },
                                          );
                                        }),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          )
                        ],
                      )
                    : Container(
                        child: Center(
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Your earning points are',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          'you have reached',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      const Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          '400',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 137, 75, 17),
                                            fontSize: 40,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      const Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          'Points',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 137, 75, 17),
                                            fontSize: 20,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w900,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'You can earn more points just by ordering through the app',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w900,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
