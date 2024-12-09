import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/zero.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(
              "Explore The Universe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  elevation: 0,
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Go to Home",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Image.asset("assets/images/Arrow.png")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
