import 'package:apartment_finder/pages/login.dart';
import 'package:apartment_finder/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF51d2d3),
        accentColor: Color(0xFFED4C0B),
      ),
      home: Login(),
    );
  }
}
