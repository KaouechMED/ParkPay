import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LanguageSelectionPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/6.png',
              width: 774.0,
              height: 256.0,
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class LanguageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth =
        MediaQuery.of(context).size.width; // Get the current screen width
    double referenceWidth = 360.0; // Your reference screen width
    double fem =
        screenWidth / referenceWidth; // Calculate fem based on screen width

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin:
                  EdgeInsets.fromLTRB(20 * fem, 5 * fem, 10 * fem, 30 * fem),
              child: Image.asset(
                'assets/1.png',
                width: 414 * fem,
                height: 151 * fem,
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(66 * fem, 30 * fem, 85 * fem, 40 * fem),
              width: double.infinity,
              height: 43 * fem,
              decoration: BoxDecoration(
                color: Color(0xd30e73bc),
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Implement language selection logic for Français
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  primary: Color(0xd30e73bc),
                ),
                child: Center(
                  child: Text(
                    'الدارجة التونسية',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18 * fem, // Scale font size based on fem
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                      fontFamily: 'Jomhuria',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(66 * fem, 0 * fem, 85 * fem, 40 * fem),
              width: double.infinity,
              height: 43 * fem,
              decoration: BoxDecoration(
                color: Color(0xd30e73bc),
                borderRadius: BorderRadius.circular(15 * fem),
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
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  primary: Color(0xd30e73bc),
                ),
                child: Center(
                  child: Text(
                    'Français',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18 * fem, // Scale font size based on fem
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                      fontFamily: 'Jomhuria',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(66 * fem, 0 * fem, 85 * fem, 40 * fem),
              width: double.infinity,
              height: 43 * fem,
              decoration: BoxDecoration(
                color: Color(0xd30e73bc),
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Implement language selection logic for English
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  primary: Color(0xd30e73bc),
                ),
                child: Center(
                  child: Text(
                    'English',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18 * fem, // Scale font size based on fem
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
    );
  }
}
