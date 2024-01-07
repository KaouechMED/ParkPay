import 'package:flutter/material.dart';
import 'package:parkpay/views/DashboardPage.dart';

class Sucesspay extends StatelessWidget {
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
              ),
              // Ellipse container
              Container(
                width: screenWidth * 0.9, // 80% of screen width
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
                      'Paiement vérifié ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14 * scale, // Adjust the font size as needed
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30 * scale),
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
              ), // Spacing between the slogan container and the buttons
            ],
          ),
        ),
      ),
    );
  }
}
