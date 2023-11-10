import 'package:flutter/material.dart';

class CustomFontFamilies {
  static const pacifico = "pacifico";
  static const sourceSans3 = "Source Sans 3";
}

class Images {
  static const profilePic = "images/pexels-ellie-burgin-18954332.jpg";
}

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(Images.profilePic),
                  ),
                  Text(
                    "Raoul Merguez",
                    style: TextStyle(
                      fontFamily: CustomFontFamilies.pacifico,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "FLUTTER DEVELOPER",
                    style: TextStyle(
                      fontFamily: CustomFontFamilies.sourceSans3,
                      color: Colors.teal.shade100,
                      fontSize: 18,
                      letterSpacing: 2.5,
                    ),
                  ),
                  Divider(
                    color: Colors.teal.shade100,
                  ),
                  ContactInformationWidget(
                    iconData: Icons.phone,
                    text: "+33 611 22 33 44",
                  ),
                  ContactInformationWidget(
                    iconData: Icons.mail,
                    text: "raoul.merguez@saucisse.com",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactInformationWidget extends StatelessWidget {
  final IconData iconData;
  final String text;

  const ContactInformationWidget({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        visualDensity: VisualDensity(vertical: -4, horizontal: -4),
        leading: Icon(
          iconData,
          color: Colors.teal.shade900,
          size: 18,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: CustomFontFamilies.sourceSans3,
            color: Colors.teal.shade900,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
