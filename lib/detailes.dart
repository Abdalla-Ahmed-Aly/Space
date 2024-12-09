import 'package:flutter/material.dart';

class Detailes extends StatelessWidget {
  final List<Map<String, String>> planets_detailes = [
    {
      "Planet Name": "Sun",
      "Title": "The Sun: Our Solar System's Star",
      "About":
          "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      "Distance from Sun (km)": "0",
      "Length of Day (hours)": "0",
      "Orbital Period (Earth years)": "0",
      "Radius (km)": "696340",
      "Mass (kg)": "1.989 × 10²⁴",
      "Gravity (m/s²)": "274",
      "Surface Area (km²)": "6.09 × 10¹²",
    },
    {
      "Planet Name": "Mercury",
      "Title": "Mercury: The Closest Planet",
      "About":
          "Mercury is the closest planet to the Sun. It has extreme temperature variations and lacks a substantial atmosphere, making it a harsh and desolate world. Despite being the smallest planet in our solar system, its density is high due to a large iron core.",
      "Distance from Sun (km)": "57909227",
      "Length of Day (hours)": "1407.6",
      "Orbital Period (Earth years)": "0.24",
      "Radius (km)": "2439.7",
      "Mass (kg)": "3.3011 × 10²³",
      "Gravity (m/s²)": "3.7",
      "Surface Area (km²)": "7.48 × 10⁷",
    },
    {
      "Planet Name": "Venus",
      "Title": "Venus: Earth's Toxic Twin",
      "About":
          "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead.",
      "Distance from Sun (km)": "108209072",
      "Length of Day (hours)": "5832.20",
      "Orbital Period (Earth years)": "0.615",
      "Radius (km)": "6051.8",
      "Mass (kg)": "4.867 × 10²⁴",
      "Gravity (m/s²)": "8.87",
      "Surface Area (km²)": "4.60 × 10⁷",
    },
    {
      "Planet Name": "Earth",
      "Title": "Earth: Our Blue Marble",
      "About":
          "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms.",
      "Distance from Sun (km)": "149598026",
      "Length of Day (hours)": "23.93",
      "Orbital Period (Earth years)": "1",
      "Radius (km)": "6371",
      "Mass (kg)": "5.972 × 10²⁴",
      "Gravity (m/s²)": "9.81",
      "Surface Area (km²)": "5.10 × 10⁸",
    },
    {
      "Planet Name": "Mars",
      "Title": "Mars: The Red Planet",
      "About":
          "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate.",
      "Distance from Sun (km)": "227943824",
      "Length of Day (hours)": "24.62",
      "Orbital Period (Earth years)": "1.88",
      "Radius (km)": "3389.5",
      "Mass (kg)": "6.4171 × 10²³",
      "Gravity (m/s²)": "3.71",
      "Surface Area (km²)": "1.45 × 10⁸",
    },
    {
      "Planet Name": "Jupiter",
      "Title": "Jupiter: The Gas Giant",
      "About":
          "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere.",
      "Distance from Sun (km)": "778547669",
      "Length of Day (hours)": "9.92",
      "Orbital Period (Earth years)": "11.86",
      "Radius (km)": "69911",
      "Mass (kg)": "1.898 × 10²⁷",
      "Gravity (m/s²)": "24.79",
      "Surface Area (km²)": "6.14 × 10¹⁰",
    },
    {
      "Planet Name": "Saturn",
      "Title": "Saturn: The Ringed Planet",
      "About":
          "Saturn is best known for its spectacular rings, composed of countless ice particles and rocks. Its rings and moons give it a distinct appearance, with its largest moon Titan having a thick atmosphere.",
      "Distance from Sun (km)": "1426666422",
      "Length of Day (hours)": "10.66",
      "Orbital Period (Earth years)": "29.46",
      "Radius (km)": "58232",
      "Mass (kg)": "5.683 × 10²⁶",
      "Gravity (m/s²)": "10.44",
      "Surface Area (km²)": "4.27 × 10⁹",
    },
    {
      "Planet Name": "Uranus",
      "Title": "Uranus: The Tilted Planet",
      "About":
          "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain.",
      "Distance from Sun (km)": "2870990000",
      "Length of Day (hours)": "17.24",
      "Orbital Period (Earth years)": "84",
      "Radius (km)": "25362",
      "Mass (kg)": "8.681 × 10²⁵",
      "Gravity (m/s²)": "8.69",
      "Surface Area (km²)": "8.1 × 10¹⁵",
    },
    {
      "Planet Name": "Neptune",
      "Title": "Neptune: The Distant World",
      "About":
          "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      "Distance from Sun (km)": "4498252900",
      "Length of Day (hours)": "16.11",
      "Orbital Period (Earth years)": "164.8",
      "Radius (km)": "24.622",
      "Mass (kg)": "1.024 × 10²⁶",
      "Gravity (m/s²)": "11.15",
      "Surface Area (km²)": "7.65 × 10¹⁵",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final String planetName =
        ModalRoute.of(context)?.settings.arguments as String;

    final planetDetails = planets_detailes.firstWhere(
      (planet) =>
          planet["Planet Name"]?.toLowerCase() == planetName.toLowerCase(),
      orElse: () => {},
    );

    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
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
              left: 10,
              right: 0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
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
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 70),
                    Positioned(
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
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 30,
              child: Text(
                planetDetails["Planet Name"] ?? "Planet",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/${planetName.toLowerCase()}.png"),
            SizedBox(height: 36),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  planetDetails["About"] ?? "No description available",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Distance from Sun (km) : ${planetDetails["Distance from Sun (km)"] }",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Length of Day (hours) : ${planetDetails["Length of Day (hours)"] }",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Orbital Period (Earth years) : ${planetDetails["Orbital Period (Earth years)"] }",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Radius (km) : ${planetDetails["Radius (km)"] }",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Mass (kg) : ${planetDetails["Mass (kg)"] }",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Gravity (m/s²) : ${planetDetails["Gravity (m/s²)"] }",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Surface Area (km²) : ${planetDetails["Surface Area (km²)"] }",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
