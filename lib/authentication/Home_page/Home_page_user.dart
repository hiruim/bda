import 'package:bda/authentication/Home_page/setting/About.dart';
import 'package:bda/authentication/Home_page/setting/Help.dart';
import 'package:bda/authentication/Home_page/setting/Language.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePageuser extends StatefulWidget {
  const HomePageuser({Key? key}) : super(key: key);

  @override
  State<HomePageuser> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageuser> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(_currentIndex),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.mark_as_unread_sharp),
            title: Text("Messages"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.settings),
            title: Text("settings"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return Home();
      case 1:
        return Message();
      case 2:
        return Settings();
      default:
        return Container(); 
    }
  }

  Widget Home() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text('Homepage'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                child: PieChart(
                  PieChartData(
                    startDegreeOffset: -90,
                    sections: [
                      PieChartSectionData(
                        value: 100,
                        color: Colors.purple,
                        title: 'O+',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 55,
                      ),
                      PieChartSectionData(
                        value: 70,
                        color: Colors.yellow,
                        title: 'B-',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 50,
                      ),
                      PieChartSectionData(
                        value: 65,
                        color: Colors.orange,
                        title: 'O-',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 45,
                      ),
                      PieChartSectionData(
                        value: 25,
                        color: Colors.green,
                        title: 'B+',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 40,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: Colors.red,
                        title: 'A-',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 35,
                      ),
                      PieChartSectionData(
                        value: 15,
                        color: Colors.cyan,
                        title: 'AB+',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 30,
                      ),
                      PieChartSectionData(
                        value: 10,
                        color: Colors.blue,
                        title: 'A+',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 25,
                      ),
                      PieChartSectionData(
                        value: 5,
                        color: Colors.brown,
                        title: 'AB-',
                        titleStyle: TextStyle(color: Colors.black),
                        radius: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                children: [
                  buildBloodTypeCard("O+", 100, 100, Colors.purple),
                  buildBloodTypeCard("B-", 70, 100, Colors.yellow),
                  buildBloodTypeCard("O-", 65, 100, Colors.orange),
                  buildBloodTypeCard("B+", 25, 100, Colors.green),
                  buildBloodTypeCard("A-", 20, 100, Colors.red),
                  buildBloodTypeCard("AB+", 15, 100, Colors.cyan),
                  buildBloodTypeCard("A+", 10, 100, Colors.blue),
                  buildBloodTypeCard("AB-", 5, 100, Colors.brown),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBloodTypeCard(
      String bloodType, int currentAmount, int maxAmount, Color color) {
    return Card(
      elevation: 15.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                bloodType,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            LinearProgressIndicator(
              value: currentAmount / maxAmount,
              color: color,
              backgroundColor: Colors.grey[300],
              minHeight: 5.0,
            ),
            SizedBox(height: 5.0),
            Flexible(
              child: Text(
                "$currentAmount of $maxAmount",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Message() {
    // Content for Messages tab
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          title: Text(
            "Message",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        body: Container(
          height: 5000,
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Aligns children to the start (left) of the cross axis
                  children: <Widget>[
                    SizedBox(height: 16.0),
                    Text(
                      'Type your Messages:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 500,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: ListView(
                        children: <Widget>[
                          TextFormField(
                            maxLength: 550,
                            maxLines: 20,
                            decoration: InputDecoration(hintText: "Message"),
                          ),
                          // Add more ListTile widgets based on the number of messages
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          icon: Icon(
                            Icons.done_all,
                            color: Colors.red[300],
                            size: 30.0,
                          ),
                          label: Text('Send'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePageuser(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // Placeholder variables for language and help settings
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.red[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Language Setting
            ListTile(
              title: Text('Language'),
              subtitle: Text(selectedLanguage),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Language(),
                  ),
                );
                // Open language settings or navigate to language settings page
                // You can implement your logic here
              },
            ),
            // Divider
            Divider(),
            // Help Button
            ListTile(
              title: Text('Help'),
              trailing: Icon(Icons.help),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('About'),
              trailing: Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
