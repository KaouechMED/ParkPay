import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'AcceptPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double referenceWidth =
        360.0; // Adjust this value based on your design system
    double scale = screenWidth / referenceWidth;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          // Allows for scrolling if content doesn't fit on the screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(
                    20 * scale, 30 * scale, 10 * scale, 30 * scale),
                child: Image.asset(
                  'assets/2.png',
                  width: 500 * scale,
                  height: 250 * scale,
                ),
              ),
              // Ellipse container
              Container(
                width: screenWidth * 0.8, // 80% of screen width
                height: 220 * scale, // Fixed height to maintain ellipse shape
                decoration: BoxDecoration(
                  color: Colors.blue.shade100, // Light blue background color
                  borderRadius:
                      BorderRadius.circular(100 * scale), // Full ellipse shape
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/5.png', // Replace with your actual asset
                      width: 180 * scale, // Adjust the width as needed
                      height: 90 * scale, // Adjust the height as needed
                    ),
                    Text(
                      'Payer Vos frais de Stationnement de manière pratique',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12 * scale, // Adjust the font size as needed
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 30 *
                      scale), // Spacing between the slogan container and the buttons

              Container(
                margin: EdgeInsets.fromLTRB(
                    66 * scale, 0 * scale, 85 * scale, 40 * scale),
                width: double.infinity,
                height: 43 * scale,
                decoration: BoxDecoration(
                  color: Color(0xd30e73bc),
                  borderRadius: BorderRadius.circular(15 * scale),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => AcceptPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15 * scale),
                    ),
                    primary: Color(0xd30e73bc),
                  ),
                  child: Center(
                    child: Text(
                      'Créer un compte',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14 * scale, // Scale font size based on fem
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                        fontFamily: 'Jomhuria',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    66 * scale, 0 * scale, 85 * scale, 50 * scale),
                width: double.infinity,
                height: 43 * scale,
                decoration: BoxDecoration(
                  color: Color(0xd30e73bc),
                  borderRadius: BorderRadius.circular(15 * scale),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15 * scale),
                    ),
                    primary: Color.fromARGB(210, 133, 193, 235),
                  ),
                  child: Center(
                    child: Text(
                      'Connexion',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14 * scale, // Scale font size based on screen
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                        fontFamily: 'Jomhuria',
                      ),
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
}
