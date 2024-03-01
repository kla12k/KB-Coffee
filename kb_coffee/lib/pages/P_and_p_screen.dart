import 'package:flutter/material.dart';
import 'package:kb_coffee/pages/login_screen.dart';
import 'package:kb_coffee/pages/resetpassword_screen.dart';
import 'package:kb_coffee/pages/screen_holder.dart';
import 'package:kb_coffee/pages/signup_screen.dart';
import 'package:passwordfield/passwordfield.dart';

class PandPScreen extends StatelessWidget {
  const PandPScreen({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Privacy Policy',
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'At KB Coffee, we take your privacy seriously. Here is an overview of what data we collect, why we collect it, and how we use it:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '- **Personal Information**: We collect your name, email address, and other contact information when you create an account or make a purchase. We use this information to process your orders, communicate with you about your account and orders, and provide customer support.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '- Usage Data: We collect information about how you use our website and app, such as which pages you visit and how long you spend on them. We use this information to improve our website and app, and to provide you with relevant content and advertisements.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '- Device Information: We collect information about the device you are using to access our website or app, such as your IP address, device type, and browser type. We use this information to ensure that our website and app are functioning properly, and to provide you with a good user experience.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '- Cookies: We use cookies to track your activity on our website and app, and to provide you with a more personalized experience. You can choose to disable cookies in your browser settings, but this may limit your ability to use certain features of our website and app.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'We do not sell or share your personal information with third parties, except as necessary to provide our services or as required by law. We take reasonable measures to protect your personal information from unauthorized access or disclosure. If you have any questions about our privacy policy, please contact us at support@kbcoffee.com.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
