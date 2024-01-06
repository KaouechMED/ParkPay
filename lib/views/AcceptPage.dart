import 'package:flutter/material.dart';
import 'RegisterPage.dart';
import 'HomePage.dart';

class AcceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double referenceWidth =
        360.0; // Ajustez cette valeur en fonction de votre système de conception
    double fem = screenWidth / referenceWidth;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          // Permet le défilement si le contenu ne rentre pas à l'écran
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
                margin: EdgeInsets.all(20 * fem),
                padding: EdgeInsets.all(10 * fem),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centre les enfants verticalement dans la colonne
                  children: <Widget>[
                    Text(
                      "Bienvenue sur ParkPay,",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16 * fem,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                        height:
                            8 * fem), // Add space between paragraphs if needed
                    Text(
                      "Dans le contexte de la gestion des problèmes de stationnement dans la ville de Tunis, ParkPay offre une solution pratique pour payer les frais de stationnement et garantir la fluidité de la circulation.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12 * fem,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationScreen()),
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
                      "Continuer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14 *
                            fem, // Échelle de la taille de la police en fonction de fem
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                        fontFamily: 'Jomhuria',
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
