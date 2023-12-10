import 'package:flutter/material.dart';
import 'DureePage.dart';
import 'DashboardPage.dart';

class PositionPage extends StatefulWidget {
  @override
  _PositionPageState createState() => _PositionPageState();
}

class _PositionPageState extends State<PositionPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double referenceWidth = 360.0;
    double scale = screenWidth / referenceWidth;
    TextStyle myTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontSize: 24 * scale,
      fontWeight: FontWeight.w600,
      height: 1.2125 * scale,
      color: Color(0xd30e73bc),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 20 * scale,
                  top: 30 * scale,
                ),
                // Replace with your own image asset
                child: Image.asset(
                  'assets/4.png',
                  width: 136 * scale,
                  height: 68 * scale,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 20 * scale,
                  top: 30 * scale,
                ),
                // Replace with your own image asset
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
          SizedBox(height: 30 * scale),
          Positioned(
            left: 0 * scale,
            top: 0 * scale,
            child: Align(
              child: SizedBox(
                width: 163 * scale,
                height: 30 * scale,
                child: Text(
                  'Votre Position',
                  textAlign: TextAlign.center,
                  style: myTextStyle,
                ),
              ),
            ),
          ),
          Positioned(
            left: 45.5 * scale,
            top: 23 * scale,
            child: Align(
              child: SizedBox(
                width: 100 * scale,
                height: 100 * scale,
                child: Image.asset('assets/9.png'),
              ),
            ),
          ),
          SizedBox(height: 30 * scale),
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
                  MaterialPageRoute(builder: (context) => DureePage()),
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
                  'Continuer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18 * scale, // Scale font size based on fem
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
