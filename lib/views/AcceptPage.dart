import 'package:flutter/material.dart';
//import 'RegisterPage.dart';

class AcceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double referenceWidth =
        360.0; // Adjust this value based on your design system
    double fem = screenWidth / referenceWidth;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          // Allows for scrolling if content doesn't fit on the screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10 * fem),
                child: Image.asset(
                  'assets/3.png',
                  width: 414 * fem,
                  height: 151 * fem,
                ),
              ),
              Container(
                margin: EdgeInsets.all(
                    20 * fem), // Add margin around the text container
                padding: EdgeInsets.all(
                    10 * fem), // Add padding inside the container
                child: Text(
                  "Dans le contexte de la gestion des problèmes de stationnement dans la ville de Tunis, et pour garantir la fluidité de la circulation, la municipalité de Tunis a créé des zones appelées les zones bleues équipées d'installations modernes telles que des distributeurs de tickets pour réguler le processus de stationnement.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16 * fem, // Adjust the font size as needed
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(66 * fem, 30 * fem, 85 * fem, 40 * fem),
                width: double.infinity,
                height: 50 * fem,
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
                    primary: Colors.blue.shade100,
                  ),
                  child: Center(
                    child: Text(
                      "Les zones équipées de distributeurs de tickets",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13 * fem, // Scale font size based on fem
                        fontWeight: FontWeight.w400,
                        color: Color(0xd30e73bc),
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
                height: 50 * fem,
                decoration: BoxDecoration(
                  color: Color(0xd30e73bc),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    primary: Colors.blue.shade100,
                  ),
                  child: Center(
                    child: Text(
                      "L'importance des zones bleues dans la régulation du stationnement",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13 * fem, // Scale font size based on fem
                        fontWeight: FontWeight.w400,
                        color: Color(0xd30e73bc),
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
                height: 42 * fem,
                decoration: BoxDecoration(
                  color: Color(0xd30e73bc),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.pushReplacement(
                    //context,
                    //MaterialPageRoute(
                    //  builder: (context) => RegistrationScreen()),
                    //);
                    Navigator.of(context).pop(true);
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
                      "J’accepte les termes",
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
      ),
    );
  }
}
