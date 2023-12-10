import 'package:flutter/material.dart';
import 'DashboardPage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                _buildTextField(hint: "Nom d'utilisateur", scale: scale),
                SizedBox(height: 16 * scale),
                _buildTextField(
                    hint: 'Mot de passe', scale: scale, obscureText: true),
                SizedBox(height: 16 * scale),
                SizedBox(height: 20 * scale),
                ElevatedButton(
                  child: Text(
                    'Se connecter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13 * scale,

                      // Add other styles like fontSize, fontFamily if necessary
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xd30e73bc), // Replace with your color
                    padding: EdgeInsets.symmetric(vertical: 20 * scale),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10 * scale),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hint,
    required double scale,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[200], // Use a light grey color
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30 * scale), // Rounded corners
        ),
        contentPadding:
            EdgeInsets.symmetric(vertical: 15 * scale, horizontal: 20 * scale),
      ),
    );
  }
}
