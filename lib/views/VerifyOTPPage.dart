import 'package:flutter/material.dart';
//import 'package:parkpay/service/http_service.dart';
import 'package:parkpay/views/DashboardPage.dart';
import 'LoginPage.dart';

class VerifyOTPScreen extends StatefulWidget {
  @override
  _VerifyOTPScreenState createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  late String otpcode;

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
                  'assets/2.png',
                  width: 100 * scale,
                  height: 100 * scale,
                ),
                SizedBox(height: 50 * scale),
                // Text fields and other widgets follow
                Text(
                  "Nous avons envoyé un code de vérification à votre numéro du téléphone",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 40 * scale),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Code de verification',
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
                      otpcode = value;
                    });
                  },
                ),
                SizedBox(height: 40 * scale),
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
                            builder: (context) => DashboardPage()),
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
                        "Verifier",
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
                      MaterialPageRoute(builder: (context) => LoginScreen()),
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
