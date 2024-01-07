import 'package:flutter/material.dart';
import 'AjouteVoiturePage.dart';
import 'DashboardPage.dart';

class AjoutesoldePage extends StatefulWidget {
  @override
  _AjoutesoldeState createState() => _AjoutesoldeState();
}

class _AjoutesoldeState extends State<AjoutesoldePage> {
  String selectedmethod = '';

  // Function to handle the selection of a parking duration
  void selectmethod(String method) {
    setState(() {
      selectedmethod = method;
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
                'Charger solde',
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
                    Image.asset(
                      'assets/pay.png',
                    ),
                    SizedBox(height: 30 * scale),

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
                          selectmethod('D17');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 * scale),
                          ),
                          primary: selectedmethod == 'D17'
                              ? Color(0xd30e73bc)
                              : Color.fromARGB(210, 133, 193, 235),
                        ),
                        child: Center(
                          child: Text(
                            'D17',
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
                          selectmethod('opérateur');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 * scale),
                          ),
                          primary: selectedmethod == 'opérateur'
                              ? Color(0xd30e73bc)
                              : Color.fromARGB(210, 133, 193, 235),
                        ),
                        child: Center(
                          child: Text(
                            'opérateur',
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15 * scale),
                ),
                primary: Color(0xd30e73bc),
              ),
              child: Center(
                child: Text(
                  "Charger",
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
