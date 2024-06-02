import 'package:bda/authentication/Home_page/Home_page_addmin.dart';
import 'package:flutter/material.dart';

class AddminMessage extends StatefulWidget {
  @override
  _AddminMessageScreenState createState() => _AddminMessageScreenState();
}

class _AddminMessageScreenState extends State<AddminMessage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "Message",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          height: 5000,
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          child: TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Aligns  children to the start (left) of the cross axis
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Text(
                    'Type your Messages:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          color: Colors.orange[300],
                          size: 30.0,
                        ),
                        label: Text('Send'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageaddmin(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
