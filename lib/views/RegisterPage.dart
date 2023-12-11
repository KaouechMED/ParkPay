import 'package:flutter/material.dart';
import 'package:parkpay/service/http_service.dart';
import 'AcceptPage.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String nom;
  late String prenom;
  late String cin;
  late String password;
  late String passwordConfirm;
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
                  decoration: InputDecoration(
                    hintText: 'Prénom',
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
                      prenom = value;
                    });
                  },
                ),
                SizedBox(height: 16 * scale),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'CIN',
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
                      cin = value;
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
                SizedBox(height: 16 * scale),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirmer mot de passe',
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
                      passwordConfirm = value;
                    });
                  },
                ),
                SizedBox(height: 16 * scale),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: termsAccepted,
                      onChanged: (bool? value) {
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
                  onPressed: () async {
                    // Check if passwords match before registration
                    if (password == passwordConfirm) {
                      await HttpService.register(
                          nom, prenom, cin, password, passwordConfirm, context);
                    } else {}
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20 * scale),
                    child: Center(
                      child: Text(
                        'S\'inscrire',
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
