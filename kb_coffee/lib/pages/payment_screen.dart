import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Please select payment method',
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
                width: size.width,
                height: 55,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  border: _type == 1
                      ? Border.all(
                          color: Color.fromARGB(255, 137, 75, 17),
                          width: 1,
                        )
                      : Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Color.fromARGB(255, 137, 75, 17),
                          ),
                          Text(
                            "Tele Birr",
                            style: _type == 1
                                ? TextStyle(
                                    color: Color.fromARGB(255, 137, 75, 17),
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  )
                                : TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/TeleBirr-Logo.svg',
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: size.width,
                height: 55,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  border: _type == 2
                      ? Border.all(
                          color: Color.fromARGB(255, 137, 75, 17),
                          width: 1,
                        )
                      : Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Color.fromARGB(255, 137, 75, 17),
                          ),
                          Text(
                            "Amole",
                            style: _type == 2
                                ? TextStyle(
                                    color: Color.fromARGB(255, 137, 75, 17),
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  )
                                : TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Image(
                              height: 80,
                              width: 80,
                              image: AssetImage("assets/images/am.png"),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: size.width,
                height: 55,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  border: _type == 3
                      ? Border.all(
                          color: Color.fromARGB(255, 137, 75, 17),
                          width: 1,
                        )
                      : Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 3,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Color.fromARGB(255, 137, 75, 17),
                          ),
                          Text(
                            "CBE Birr",
                            style: _type == 3
                                ? TextStyle(
                                    color: Color.fromARGB(255, 137, 75, 17),
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  )
                                : TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: SvgPicture.asset(
                              'assets/icons/cbe.svg',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: size.width,
                height: 55,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  border: _type == 4
                      ? Border.all(
                          color: Color.fromARGB(255, 137, 75, 17),
                          width: 1,
                        )
                      : Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 4,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Color.fromARGB(255, 137, 75, 17),
                          ),
                          Text(
                            "Chapa",
                            style: _type == 4
                                ? TextStyle(
                                    color: Color.fromARGB(255, 137, 75, 17),
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  )
                                : TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Image(
                              height: 80,
                              width: 80,
                              image: AssetImage("assets/images/cha.png"),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: size.width,
                height: 55,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  border: _type == 5
                      ? Border.all(
                          color: Color.fromARGB(255, 137, 75, 17),
                          width: 1,
                        )
                      : Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 5,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Color.fromARGB(255, 137, 75, 17),
                          ),
                          Text(
                            "M-PESA",
                            style: _type == 5
                                ? TextStyle(
                                    color: Color.fromARGB(255, 137, 75, 17),
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  )
                                : TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: SvgPicture.asset(
                              'assets/icons/mp.svg',
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
