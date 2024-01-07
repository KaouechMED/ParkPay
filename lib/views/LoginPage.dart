import 'package:flutter/material.dart';
//import 'package:parkpay/service/http_service.dart';
import 'package:parkpay/views/VerifyOTPPage.dart';
import 'HomePage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
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
                SizedBox(height: 120 * scale),
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
                    hintText: "nom d'utilisateur",
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
                      username = value;
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
                SizedBox(height: 45 * scale),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      66 * scale, 0 * scale, 85 * scale, 40 * scale),
                  width: double.infinity,
                  height: 42 * scale,
                  decoration: BoxDecoration(
                    color:
                        Color(0xd30e73bc), // Background color of the container
                    borderRadius:
                        BorderRadius.circular(15 * scale), // Rounded corners
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyOTPScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15 * scale),
                      ),
                      primary: Color(0xd30e73bc), // Button color
                    ),
                    child: Center(
                      child: Text(
                        "Se connecter",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14 * scale, // Adjusted font size
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff), // Text color (white)
                          fontFamily: 'Jomhuria', // Font family
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
      ),
    );
  }
}
