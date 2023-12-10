import 'package:flutter/material.dart';
import 'AcceptPage.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool termsAccepted = false;
  void _navigateToAcceptTerms() async {
    // Navigate to AcceptTermsPage and wait for the result
    bool? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AcceptPage(),
      ),
    );

    // When returning from AcceptTermsPage, if the result is true, set the checkbox as checked
    if (result != null && result) {
      setState(() {
        termsAccepted = true;
      });
    }
  }

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
                _buildTextField(hint: 'nom', scale: scale),
                SizedBox(height: 16 * scale),
                _buildTextField(hint: 'Prénom', scale: scale),
                SizedBox(height: 16 * scale),
                _buildTextField(hint: 'CIN', scale: scale),
                SizedBox(height: 16 * scale),
                _buildTextField(
                    hint: 'Mot de passe', scale: scale, obscureText: true),
                SizedBox(height: 16 * scale),
                _buildTextField(
                    hint: 'Confirmer mot de passe',
                    scale: scale,
                    obscureText: true),
                SizedBox(height: 16 * scale),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: termsAccepted,
                      onChanged: (bool? value) {
                        // Navigate to AcceptTermsPage when the checkbox is tapped
                        _navigateToAcceptTerms();
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to AcceptTermsPage when the text is tapped
                        _navigateToAcceptTerms();
                      },
                      child: Text(
                        "J'accepte les termes et les conditions",
                        style: TextStyle(
                            // Your text style here
                            ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20 * scale),
                ElevatedButton(
                  child: Text(
                    'S\'inscrire',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13 * scale,

                      // Add other styles like fontSize, fontFamily if necessary
                    ),
                  ),
                  onPressed: () {
                    // Handle sign up action
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
