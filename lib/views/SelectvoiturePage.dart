import 'package:flutter/material.dart';
import 'AjouteVoiturePage.dart';
import 'DashboardPage.dart';
import 'sucesspayed.dart';

class SelectvoiturePage extends StatefulWidget {
  @override
  _SelectvoitureState createState() => _SelectvoitureState();
}

class _SelectvoitureState extends State<SelectvoiturePage> {
  String selectedvoiture = '';

  // Function to handle the selection of a parking duration
  void selectvoiture(String voiture) {
    setState(() {
      selectedvoiture = voiture;
    });
  }

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
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 20 * scale), // Adjust the top padding as needed
              child: Text(
                'Choisir voiture',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20 * scale,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * scale,
                  color: Color(0xd30e73bc),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Your content above the butt
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
                          selectvoiture('202 TN 1985');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 * scale),
                          ),
                          primary: selectedvoiture == '202 TN 1985'
                              ? Color(0xd30e73bc)
                              : Color.fromARGB(210, 133, 193, 235),
                        ),
                        child: Center(
                          child: Text(
                            '202 TN 1985',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  14 * scale, // Scale font size based on screen
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
                          selectvoiture('198 TN 2001');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 * scale),
                          ),
                          primary: selectedvoiture == '198 TN 2001'
                              ? Color(0xd30e73bc)
                              : Color.fromARGB(210, 133, 193, 235),
                        ),
                        child: Center(
                          child: Text(
                            '198 TN 2001',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  14 * scale, // Scale font size based on screen
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff),
                              fontFamily: 'Jomhuria',
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                    // on
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                66 * scale, 0 * scale, 85 * scale, 40 * scale),
            width: double.infinity,
            height: 42 * scale,
            decoration: BoxDecoration(
              color: Color(0xd30e73bc),
              borderRadius: BorderRadius.circular(15 * scale),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Sucesspay()),
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
                  "Payer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14 * scale,
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
