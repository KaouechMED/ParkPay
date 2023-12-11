import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:parkpay/views/DashboardPage.dart';
import 'package:parkpay/views/HomePage.dart';

class HttpService {
  static const String baseUrl = "http://127.0.0.1:5000";

  static Future<void> login(String username, String password, context) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/login'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DashboardPage()),
        );
      }
    } catch (e) {}
  }

  static Future<void> register(
    String username,
    String emailAddress,
    String cin,
    String password,
    String passwordConfirm,
    context,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/register'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'emailAddress': emailAddress,
          'cin': cin,
          'password': password,
          'passwordConfirm': passwordConfirm,
        }),
      );

      if (response.statusCode == 201) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DashboardPage()),
        );
      } else {
        print('Registration failed. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {}
  }

  static Future<void> logout(context) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/api/logout'),
      );
      if (response.statusCode == 200) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    } catch (e) {}
  }
}
