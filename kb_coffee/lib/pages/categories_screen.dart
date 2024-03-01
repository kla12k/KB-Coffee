import 'package:flutter/material.dart';
import 'package:kb_coffee/models/hotdrink_model.dart';
import 'package:kb_coffee/pages/detail_screen.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class CategoryScreen extends StatelessWidget {
  final String title;

  CategoryScreen({Key? key, required this.title}) : super(key: key);

  List<HotDrinkModel> hotdrink = [];
  void _gethotdrink() {
    hotdrink = HotDrinkModel.gethotdrink();
  }

  Widget _buildHotDrinkItem(
      HotDrinkModel hotDrink, int index, BuildContext context) {
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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.11),
                spreadRadius: 0.0,
                blurRadius: 40,
              ),
            ],
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: const Color.fromARGB(255, 137, 75, 17)),
            image: DecorationImage(
              image: AssetImage(hotDrink.iconPath),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    hotDrink.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _gethotdrink();
    int items = hotdrink.length;

    return Scaffold(
        appBar: AppBar(
          title: Align(
              alignment: Alignment.center,
              child: Text(
                title,
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
          height: MediaQuery.of(context).size.height * 6,
          width: MediaQuery.of(context).size.width * 6,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg2.png"), fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(items, (index) {
                          return _buildHotDrinkItem(
                              hotdrink[index], index, context);
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class GridItem extends StatelessWidget {
  final int index;
  final String label;

  GridItem({required this.index, required this.label, required Column child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
