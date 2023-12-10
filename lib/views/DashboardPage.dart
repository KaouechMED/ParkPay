import 'package:flutter/material.dart';
import 'package:parkpay/views/HomePage.dart';
import 'MesvoituresPage.dart';
import 'SoldePage.dart';
import 'PositionPage.dart';

class DashboardPage extends StatelessWidget {
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
                child: Image.asset(
                  'assets/8.png', // Replace with your right image asset name
                  width: 100 * scale, // Adjust the size as needed
                  height: 100 * scale, // Adjust the size as needed
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * scale, 0 * scale, 0 * scale, 87.5 * scale),
                      child: Image.asset(
                        'assets/7.png',
                        width: 400 * scale,
                        height: 120 * scale,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          66 * scale, 30 * scale, 85 * scale, 40 * scale),
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
                            MaterialPageRoute(
                                builder: (context) => VoiturePage()),
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
                            "Mes Voitures",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  18 * scale, // Scale font size based on fem
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
                            MaterialPageRoute(
                                builder: (context) => SoldePage()),
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
                            'Mon solde',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  18 * scale, // Scale font size based on fem
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
                            MaterialPageRoute(
                                builder: (context) => PositionPage()),
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
                            'Payer un frais de stationnement',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  18 * scale, // Scale font size based on fem
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
                            MaterialPageRoute(builder: (context) => HomePage()),
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
                            'déconnexion',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  18 * scale, // Scale font size based on fem
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
          ),
        ],
      ),
    );
  }
}
