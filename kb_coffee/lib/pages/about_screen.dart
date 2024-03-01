import 'package:flutter/material.dart';

class AboutKBCoffeeScreen extends StatelessWidget {
  const AboutKBCoffeeScreen({Key? key}) : super(key: key);

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
          height: MediaQuery.of(context).size.height * 6,
          width: MediaQuery.of(context).size.width * 6,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/bg2.png"), fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16, left: 120, right: 80),
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Text(
                  'KB Coffee is a specialty coffee roaster and cafe located in the heart of the city. We are passionate about sourcing and roasting the highest quality coffee beans from around the world, and serving them to our customers with care and attention to detail.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 16),
                Text(
                  'Our Story',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'KB Coffee was founded in 2023 by Kaleab shewazemed, who shared a passion for great coffee and a desire to create a welcoming and inclusive space for coffee lovers of all kinds. Over the years, we have built a loyal following of customers who appreciate our commitment to quality, sustainability, and community.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Our Values',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'At KB Coffee, we are guided by a set of core values that inform everything we do:',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                _ValueCard(
                  title: 'Quality',
                  content:
                      'We are committed to sourcing and roasting the best coffee beans, and to providing exceptional service and hospitality to our customers.',
                ),
                SizedBox(height: 16),
                _ValueCard(
                  title: 'Sustainability',
                  content:
                      'We believe in doing business in a way that is environmentally responsible and socially just. We source our coffee beans from farmers who share our commitment to sustainability and fair labor practices.',
                ),
                SizedBox(height: 16),
                _ValueCard(
                  title: 'Community',
                  content:
                      'We are proud to be a part of the local community, and we strive to create a welcoming and inclusive space where people can come together and enjoy great coffee.',
                ),
                SizedBox(height: 16),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'If you have any questions or comments, please don\'t hesitate to get in touch with us. We would love to hear from you!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Contact Us'),
                ),
              ],
            ),
          ),
        ));
  }
}

class _ValueCard extends StatelessWidget {
  final String title;
  final String content;

  const _ValueCard({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              content,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
