import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int PlanetIndex = 0;

  final List<Map<String, String>> planets = [
    {"name": "Earth", "image": "assets/glb/earth.glb"},
    {"name": "Mars", "image": "assets/glb/mars.glb"},
    {"name": "Jupiter", "image": "assets/glb/jupiter.glb"},
    {"name": "Mercury", "image": "assets/glb/mercury.glb"},
    {"name": "Neptune", "image": "assets/glb/neptune.glb"},
    {"name": "Saturn", "image": "assets/glb/saturn.glb"},
    {"name": "Sun", "image": "assets/glb/sun.glb"},
    {"name": "Uranus", "image": "assets/glb/uranus.glb"},
    {"name": "Venus", "image": "assets/glb/venus.glb"},
  ];

  void _nextPlanet() {
    setState(() {
      PlanetIndex = (PlanetIndex + 1) % planets.length;
    });
  }

  void _previousPlanet() {
    setState(() {
      PlanetIndex = (PlanetIndex - 1 + planets.length) % planets.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentPlanet = planets[PlanetIndex];

    return Scaffold(
      backgroundColor: const Color(0xff0E0E0E),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/Appbar.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.center,
                    end: Alignment.topLeft,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: Text(
                'Which planet \nwould you like to explore?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Flutter3DViewer(
              progressBarColor: Colors.red,
              key: ValueKey(currentPlanet["image"]),
              src: currentPlanet["image"]!,
            ),
          ),
           SizedBox(height: 38),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _previousPlanet,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  elevation: 0,
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
              Text(
                currentPlanet["name"]!,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: _nextPlanet,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  elevation: 0,
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/Detailes',arguments: currentPlanet["name"]!,);
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
                    "Explore ${currentPlanet["name"]!}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Image.asset("assets/images/Arrow.png")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
