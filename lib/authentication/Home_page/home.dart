import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloodTypes = ['A+', 'A', 'B+', 'B', 'AB+', 'O'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Homepage!'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircularProgressIndicator(
              value: 987 / 1000,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: bloodTypes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Blood Type ${bloodTypes[index]}'),
                  trailing: Text('125'),
                  subtitle: LinearProgressIndicator(
                    value: 125 / 1000,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Define the action when the home button is pressed
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Define the action when the settings button is pressed
              },
            ),
          ],
        ),
      ),
    );
  }
}

