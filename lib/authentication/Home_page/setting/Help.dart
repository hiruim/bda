import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Help",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          backgroundColor: Colors.red[200],
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                _buildSectionWithTitleAndBorder('1.Why Donate Blood ?'),
                _buildTextWithBorder(
                    "Save Lives:- One donation can save up to three lives.                                   "
                    "Community Support:- Helps maintain an adequate blood supply for emergencies and medical treatments."),
                SizedBox(height: 20),
                _buildSectionWithTitleAndBorder('2.Eligibility Requirements'),
                _buildTextWithBorder(
                    "1. Age                                                "
                    "2.Weight                                                  "
                    "3.Health                                          "
                    "4.Medical Conditions"),
                SizedBox(height: 20),
                _buildSectionWithTitleAndBorder('3.Before Donation'),
                _buildTextWithBorder(
                    "Hydrate :- Drink plenty of water or non-alcoholic fluids.                                          "
                    "Eat Well :- Have a healthy meal before donating and avoid fatty foods             "
                    "Rest :- Ensure you get a good night’s sleep."),
                SizedBox(height: 20),
                _buildSectionWithTitleAndBorder('4.During Donation'),
                _buildTextWithBorder(
                    "Process :- The donation itself usually takes about 10-15 minutes, but the whole visit (registration, health screening, recovery) may take about an hour.    "
                    "Comfort :- Wear comfortable clothing with sleeves that can be raised above the elbow.                                          "
                    "Identification :- Bring a form of ID."),
                SizedBox(height: 20),
                _buildSectionWithTitleAndBorder('5.After Donation'),
                _buildTextWithBorder(
                  "Rest: Spend a few minutes resting and have a snack provided by the donation center."
                  "Hydrate: Continue to drink plenty of fluids for the next 24-48 hours.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionWithTitleAndBorder(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 9, 62, 116),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(8.0),
    );
  }

  Widget _buildTextWithBorder(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(8.0),
    );
  }
}
