import 'package:flutter/material.dart';
import 'DashboardPage.dart';
import 'MesvoituresPage.dart';
import 'checkpaimentPage.dart';

class AjouteVoiturePage extends StatefulWidget {
  @override
  _AjouteVoiturePageState createState() => _AjouteVoiturePageState();
}

class _AjouteVoiturePageState extends State<AjouteVoiturePage> {
  late String nom_voiture;
  late String leftnumber;
  late String rightnumber;

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
          SizedBox(height: 60 * scale),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0 * scale),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Nom du voiture',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30 * scale),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15 * scale, horizontal: 20 * scale),
                      ),
                      onChanged: (value) {
                        setState(() {
                          nom_voiture = value;
                        });
                      },
                    ),
                    SizedBox(height: 16 * scale),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(),
                              onChanged: (value) {
                                setState(() {
                                  leftnumber = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'تونس',
                            style: TextStyle(),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(),
                              onChanged: (value) {
                                setState(() {
                                  rightnumber = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50 * scale),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckPage()),
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
                            "Ajouter",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14 *
                                  scale, // Échelle de la taille de la police en fonction de fem
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
                          MaterialPageRoute(
                              builder: (context) => VoiturePage()),
                        );
                      },
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
