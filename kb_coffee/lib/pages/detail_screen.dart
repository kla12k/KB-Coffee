import 'package:flutter/material.dart';
import 'package:kb_coffee/models/hotdrink_model.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class DrinkDetail extends StatefulWidget {
  final String title;
  final String image;
  final double price;
  final double rate;
  final String description;

  DrinkDetail({
    required this.title,
    required this.image,
    required this.price,
    required this.rate,
    required this.description,
  });

  @override
  State<DrinkDetail> createState() => _DrinkDetailState();
}

class _DrinkDetailState extends State<DrinkDetail> {
  bool _isDescriptionExpanded = false;
  double _amount = 0.0;
  bool _sSelected = false;
  bool _mSelected = true;
  bool _lSelected = false;

  @override
  void initState() {
    super.initState();
    _amount = widget.price;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = screenWidth * (9 / 16);
    String _shortDescription = widget.description.length > 50
        ? '${widget.description.substring(0, 50)}  Read more....'
        : widget.description;

    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: TextStyle(
              color: Color.fromARGB(255, 17, 23, 23),
              fontSize: 30,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w900,
              height: 0,
            ),
          ),
        ),
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
        actions: [
          IconButton(
            color: const Color.fromARGB(255, 218, 95, 86),
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 10, right: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${"⭐ "}${widget.rate}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, bottom: 2, top: 30, right: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                width: 400,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: const Color.fromARGB(255, 137, 75, 17)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, right: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    color: Color.fromARGB(255, 17, 23, 23),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10, right: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                width: 400,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _isDescriptionExpanded = !_isDescriptionExpanded;
                    });
                  },
                  child: Text(
                    _isDescriptionExpanded
                        ? widget.description
                        : _shortDescription,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color.fromARGB(255, 17, 23, 23),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Size",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 23, 23),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _mSelected = false;
                        _lSelected = false;
                        _amount = widget.price;
                        _amount = _amount / 2;
                        _sSelected = !_sSelected;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: _sSelected
                            ? Color.fromARGB(183, 156, 152, 152)
                            : const Color.fromARGB(255, 255, 255,
                                255), // Change the color based on _sSelected
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 137, 75, 17)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "S",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 137, 75, 17),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _sSelected = false;

                        _lSelected = false;
                        _amount = widget.price;
                        _mSelected = !_mSelected;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: _mSelected
                            ? Color.fromARGB(183, 156, 152, 152)
                            : const Color.fromARGB(255, 255, 255,
                                255), // Change the color based on _mSelected
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromARGB(255, 137, 75, 17),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "M",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 137, 75, 17),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _sSelected = false;
                        _mSelected = false;

                        _amount = widget.price;
                        _amount = _amount * 2;
                        _lSelected = !_lSelected;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: _lSelected
                            ? Color.fromARGB(183, 156, 152, 152)
                            : const Color.fromARGB(255, 255, 255,
                                255), // Change the color based on _lSelected

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "L",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 137, 75, 17),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text(
                              "Price",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 88, 86, 83),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "\$${_amount}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 75, 17),
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: SizedBox(
                          width: 200,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 137, 75, 17),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Order',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
