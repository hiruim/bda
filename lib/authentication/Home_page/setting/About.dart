import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});

  Future<void> _launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'hirushahewagama02@gmail.com',
    );

    try {
      if (await canLaunch(_emailLaunchUri.toString())) {
        await launch(_emailLaunchUri.toString());
      } else {
        throw 'Could not launch $_emailLaunchUri';
      }
    } catch (e) {
      print('Error launching email: $e');
      // Provide a fallback option here, such as showing an error message.
    }
  }

  Future<void> _launchPhone() async {
    const phone = 'tel:+94702035711';
    try {
      if (await canLaunch(phone)) {
        await launch(phone);
      } else {
        throw 'Could not launch $phone';
      }
    } catch (e) {
      print('Error launching phone: $e');
      // Provide a fallback option here, such as showing an error message.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.red[200],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage('assets/blood0.jpeg'), // Add your logo image
              ),
              SizedBox(height: 20),
              Text(
                'Blood Bank',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Blood Bank Blood Donation App that connects Admin, Users, Donators. Easy and security is the main purpose of this app.  ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Support',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Contact Us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _launchEmail();
                },
                child: Text(
                  'hirushahewagama02@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _launchPhone();
                },
                child: Text(
                  'Hirusha :- +94 702035711',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your feedbackk is important to us in order to make Blood Donation App better for you. Report any bugs, improvements and your suggestions regarding Blood Donation app so we can serve you even better.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
