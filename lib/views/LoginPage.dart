import 'package:flutter/material.dart';
import 'package:parkpay/service/http_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String nom;
  late String password;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseWidth = 360.0;
    double scale = screenWidth / baseWidth;

    return Scaffold(
      backgroundColor: Colors.white, // Assuming a white background
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0 * scale),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20 * scale),
                // Replace with your actual logo asset
                Image.asset(
                  'assets/6.png',
                  width: 100 * scale,
                  height: 100 * scale,
                ),
                SizedBox(height: 40 * scale),
                // Text fields and other widgets follow
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Nom',
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
                      nom = value;
                    });
                  },
                ),
                SizedBox(height: 16 * scale),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
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
                      password = value;
                    });
                  },
                ),
                SizedBox(height: 20 * scale),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await HttpService.login(nom, password, context);
                    } catch (e) {}
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20 * scale),
                    child: Center(
                      child: Text(
                        'Se connecter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13 * scale,
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xd30e73bc), // Replace with your color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10 * scale),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
