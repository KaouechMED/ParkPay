import 'package:flutter/material.dart';
import 'package:camera/camera.dart'; // Import the camera package
import 'package:parkpay/views/HomePage.dart';
import 'dart:io'; // Import the dart:io library for File class
import 'LoginPage.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  XFile? capturedImage; // Variable to hold the captured image

  @override
  void initState() {
    super.initState();
    availableCameras().then((cameras) {
      _controller = CameraController(cameras[0], ResolutionPreset.medium);
      _initializeControllerFuture = _controller.initialize();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              // Left aligned image
              Container(
                margin: EdgeInsets.only(
                  left: 20 * scale,
                  top: 30 * scale,
                ),
                child: Image.asset(
                  'assets/4.png', // Replace with your left image asset name
                  width: 136 * scale, // Adjust the size as needed
                  height: 68 * scale, // Adjust the size as needed
                ),
              ),
              // Right aligned image
            ],
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (capturedImage != null)
                      Column(children: [
                        Container(
                          margin: EdgeInsets.all(20 * scale),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12 * scale),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12 * scale),
                            child: Image.file(
                              File(capturedImage!.path),
                              width: 300 * scale, // Adjust the width
                              height: 200 * scale, // Adjust the height
                              fit: BoxFit.cover, // Maintain aspect ratio
                            ),
                          ),
                        ),
                        SizedBox(height: 15 * scale),
                        Text(
                          "Matricule :",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16 * scale,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    SizedBox(height: 15 * scale),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          66 * scale, 0 * scale, 85 * scale, 40 * scale),
                      width: double.infinity,
                      height: 43 * scale,
                      decoration: BoxDecoration(
                        color: Color(0xd30e73bc),
                        borderRadius: BorderRadius.circular(15 * scale),
                      ),
                      child: ElevatedButton(
                        onPressed: () async {
                          try {
                            await _initializeControllerFuture;
                            final XFile image = await _controller.takePicture();

                            setState(() {
                              capturedImage =
                                  image; // Assign the captured image to the variable
                            });
                          } catch (e) {
                            print("Error taking picture: $e");
                          }
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
                            'Scanner matricule',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  14 * scale, // Scale font size based on fem
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
          ),
        ],
      ),
    );
  }
}
