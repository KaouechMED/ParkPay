import 'package:flutter/material.dart';
import 'DashboardPage.dart';

class AjouteVoiturePage extends StatelessWidget {
  final TextEditingController voitureController = TextEditingController();
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
                    _buildTextField(hint: 'Nom de voiture', scale: scale),
                    SizedBox(height: 16 * scale),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(),
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
                              decoration: InputDecoration(
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50 * scale),
                    ElevatedButton(
                      child: Text(
                        'Ajouter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13 * scale,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xd30e73bc),
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
        ],
      ),
    );
  }
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
      fillColor: Colors.grey[200],
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30 * scale),
      ),
      contentPadding:
          EdgeInsets.symmetric(vertical: 15 * scale, horizontal: 20 * scale),
    ),
  );
}
