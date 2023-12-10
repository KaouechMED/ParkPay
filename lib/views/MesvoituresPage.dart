import 'package:flutter/material.dart';
import 'AjouteVoiturePage.dart';
import 'DashboardPage.dart';

class VoiturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double referenceWidth = 360.0;
    double scale = screenWidth / referenceWidth;

    return Scaffold(
      body: Column(
        children: <Widget>[
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
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Mes Voitures',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20 * scale,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * scale,
                        color: Color(0xd30e73bc),
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
                                builder: (context) => AjouteVoiturePage()),
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
                            "Ajouter une voiture",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18 * scale,
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
