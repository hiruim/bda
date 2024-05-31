import 'package:bda/authentication/login/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 236, 235, 223),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Blood Donation",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 50),
              CarouselSlider(
                items: [
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.white,
                    child: Image.asset("assets/blood1.jpeg"),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.white,
                    child: Image.asset("assets/blood2.jpeg"),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.white,
                    child: Image.asset("assets/blood3.jpeg"),
                  ),
                ],
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.5,
                ),
              ),
              SizedBox(height: 40), // Correct way to add vertical space
              Expanded(
                flex: 5,
                child: Text(
                  "Welcome to my Blood Donation Application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 232, 65, 65),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 136, 135, 132),
                  minimumSize: Size(200, 50),
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ), // Optional: Change text size
                ),
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
