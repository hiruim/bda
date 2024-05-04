import 'package:bda/authentication/Home_page/setting/About.dart';
import 'package:bda/authentication/Home_page/setting/Help.dart';
import 'package:bda/authentication/Home_page/setting/Language.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePageaddmin extends StatefulWidget {
  const HomePageaddmin({Key? key}) : super(key: key);

  @override
  State<HomePageaddmin> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageaddmin> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(
          _currentIndex), // Use _buildPage method to display the content based on the selected index
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
            title: Text("message"),
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
        return _buildHomeTab();
      case 1:
        return Message();
      case 2:
        return Settings();
      default:
        return Container(); // Default case, you can return an empty container or handle differently.
    }
  }

  Widget _buildHomeTab() {
    // Content for Home tab
    return Center(
      child: Text("Home Tab Content"),
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
                                builder: (context) => Settings(),
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
  bool _isDarkMode = false;
  String selectedLanguage = 'English';

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.red[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Language Setting
            ListTile(
              title: Text('Language'),
              subtitle: Text('English'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Language(),
                  ),
                );
              },
            ),
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
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: _isDarkMode,
                onChanged: (value) {
                  _toggleDarkMode(value);
                  // Add the logic to apply the dark mode theme here
                  if (value) {
                    // Apply dark theme
                    Theme.of(context).copyWith(
                      brightness: Brightness.dark,
                    );
                  } else {
                    // Apply light theme
                    Theme.of(context).copyWith(
                      brightness: Brightness.light,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
