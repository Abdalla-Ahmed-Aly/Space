import 'package:flutter/material.dart';
import 'package:space/HomeScreen.dart';
import 'package:space/LoginScreen.dart';
import 'package:space/detailes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
        '/home': (_) => Homescreen(),
        '/Detailes': (_) => Detailes(),
      },
        home: LoginScreen(),
      ),
    );
  }
}
