import 'package:flutter/material.dart';
import 'package:kb_coffee/models/liked_drink.dart';
import 'package:kb_coffee/pages/detail_screen.dart';

class FavScreen extends StatefulWidget {
  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  List<LikedDrink> hotdrink = [];
  Map<int, Color> iconColors = {};

  void _gethotdrink() {
    hotdrink = LikedDrink.getlikeddrink();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = screenWidth * (9 / 16);
    _gethotdrink();
    int items = hotdrink.length;

    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              iconSize: 50,
              icon: Icon(
                Icons.account_circle,
              ),
              onPressed: () {},
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                iconSize: 35,
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg2.png"), fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              _categoriesSection(),
            ],
          ),
        ));
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Favorites",
            style: TextStyle(
              color: Color.fromARGB(255, 17, 23, 23),
              fontSize: 30,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w900,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListView.separated(
          itemCount: hotdrink.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemBuilder: (context, index) {
            Color iconColor = Colors.red;
            if (this.iconColors.containsKey(index)) {
              iconColor = this.iconColors[index]!;
            }
            return Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 137, 75, 17),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      width: 120,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 10),
                          child: Image(
                            image: AssetImage(hotdrink[index].iconPath),
                          )),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: VerticalDivider(
                      color: const Color.fromARGB(255, 137, 75, 17),
                      thickness: 0.8,
                      endIndent: 2,
                      indent: 2,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 50, top: 20, right: 50),
                        child: Text(
                          hotdrink[index].name,
                          style: const TextStyle(
                              color: const Color.fromARGB(255, 137, 75, 17),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, bottom: 10, top: 10, right: 10),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: 180,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color:
                                      const Color.fromARGB(255, 137, 75, 17)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 25),
                            child: Align(
                              alignment: AlignmentDirectional.bottomStart,
                              child: Text(
                                "${"⭐ "}${hotdrink[index].rate}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: IconButton(
                              color:
                                  iconColor, // Use the iconColor variable here
                              icon: Icon(Icons.favorite),

                              onPressed: () {
                                setState(() {
                                  if (this.iconColors.containsKey(index)) {
                                    this.iconColors.remove(
                                        index); // Remove the iconColor from the map
                                    iconColor = Colors.black;
                                  } else {
                                    this.iconColors[index] = Colors
                                        .grey; // Add the iconColor to the map
                                    iconColor = Colors.grey;
                                  }
                                });
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: IconButton(
                              color: const Color.fromARGB(255, 137, 75, 17),
                              icon: Icon(Icons.navigate_next_outlined),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DrinkDetail(
                                      title: hotdrink[index].name,
                                      image: hotdrink[index].iconPath,
                                      rate: hotdrink[index].rate,
                                      price: hotdrink[index].price,
                                      description: hotdrink[index].description,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}
