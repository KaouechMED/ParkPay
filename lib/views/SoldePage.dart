import 'package:flutter/material.dart';
import 'DashboardPage.dart';
import 'AjoutersoldePage.dart';

class SoldePage extends StatefulWidget {
  @override
  _SoldePageState createState() => _SoldePageState();
}

class _SoldePageState extends State<SoldePage> {
  int balance = 0; // Initial balance

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double referenceWidth = 360.0;
    double scale = screenWidth / referenceWidth;

    return Scaffold(
      body: Column(
        children: <Widget>[
          // This Row contains your two images at the top of the screen
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Left aligned image
              Container(
                margin: EdgeInsets.only(
                  left: 20 * scale,
                  top: 30 * scale,
                ),
                child: Image.asset(
                  'assets/4.png', // Replace with your left image asset name
                  width: 136 * scale, // Adjust the size as needed
                  height: 68 * scale, // Adjust the size as needed
                ),
              ),
              // Right aligned image
              Container(
                margin: EdgeInsets.only(
                  right: 20 * scale,
                  top: 30 * scale,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  },
                  child: Image.asset(
                    'assets/7.png',
                    width: 100 * scale,
                    height: 100 * scale,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60 * scale),
          Stack(
            children: [
              Container(
                width: 200 * scale, // Fixed width to maintain circle shape
                height: 200 * scale, // Fixed height to maintain circle shape
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6), // F6F6F6 color
                  shape: BoxShape.circle, // Indicates a circular shape
                ),
              ),
              Center(
                child: Text(
                  '$balance DINARS', // Display the current balance
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            alignment: Alignment.center,
          ),
          SizedBox(
              height: 60 *
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
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AjoutesoldePage()),
                  ); // Increment the balance when button is pressed
                });
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
                  'Charger mon compte',
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
        ],
      ),
    );
  }
}
