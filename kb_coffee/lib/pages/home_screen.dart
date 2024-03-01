import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kb_coffee/models/category_model.dart';
import 'package:kb_coffee/models/hotdrink_model.dart';
import 'package:kb_coffee/pages/categories_screen.dart';
import 'package:kb_coffee/pages/detail_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kb_coffee/pages/notfication_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<CategoryModel> categories = [];
  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  List<HotDrinkModel> hotdrink = [];
  void _gethotdrink() {
    hotdrink = HotDrinkModel.gethotdrink();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    _gethotdrink();
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Image(
                image: AssetImage("assets/images/u.png"),
              )),
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notify()));
                },
              ),
            ),
          ],
        ),
        body: Container(
            height: MediaQuery.of(context).size.height * 6,
            width: MediaQuery.of(context).size.width * 6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg2.png"), fit: BoxFit.fill),
            ),
            child: ListView(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                _searchField(),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(160, 137, 75, 17),
                          blurRadius: 5,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage("assets/images/c1.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 15, bottom: 15),
                        child: TyperAnimatedTextKit(
                          text: [
                            'Did you know that coffee is the second most traded commodity in the world, after crude oil? It is a highly popular beverage consumed by millions of people worldwide. The global coffee industry plays a significant role in the economies of several countries, particularly those involved in coffee production and export.Coffee cultivation and trade have a rich history and continue to have a major impact on various regions around the globe.'
                          ],
                          textStyle: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 241, 241, 241),
                            fontWeight: FontWeight.w500,
                          ),
                          speed: Duration(milliseconds: 200),
                          isRepeatingAnimation: false,
                          curve: Curves.linear,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                _categoriesSection(),
                const SizedBox(height: 40),
                _homespecial(),
              ]),
            ])));
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.11),
              spreadRadius: 0.0,
              blurRadius: 40,
            ),
          ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(155, 137, 75, 17),
            contentPadding: EdgeInsets.all(10),
            hintText: "Search yours test",
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.white,
                      thickness: 0.1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Category',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CategoryScreen(title: categories[index].name)),
                  );
                },
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: categories[index].boxColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage(categories[index].iconPath),
                            )),
                      ),
                      Text(
                        categories[index].name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Column _homespecial() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Home special',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 350,
          child: ListView.separated(
            itemCount: hotdrink.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
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
                child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          //sssss     const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),

                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.1),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.2),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.3),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.4),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.5),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.6),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.7),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.8),
                          const Color.fromARGB(255, 137, 75, 17)
                              .withOpacity(0.9),
                          const Color.fromARGB(255, 137, 75, 17).withOpacity(1),
                          const Color.fromARGB(255, 137, 75, 17).withOpacity(1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(38, 200)),
                            color: Colors.white,
                            shape: BoxShape.rectangle),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage(hotdrink[index].iconPath),
                              fit: BoxFit.contain,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 25),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                hotdrink[index].name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 25),
                            child: Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Text(
                                "${"⭐ "}${hotdrink[index].rate}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 25),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "\$${" "}" + "${hotdrink[index].price}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                iconSize: 25,
                                color: Colors.black,
                                icon: Icon(
                                  Icons.add_circle,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
