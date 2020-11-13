import 'package:flutter/material.dart';
import 'package:projectapp/announcement.dart';
import 'package:projectapp/utility.dart';
import 'package:firebase_auth/firebase_auth.dart';


final _auth = FirebaseAuth.instance;

class HomePage extends StatefulWidget {
  static const String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar contains the title and announcement icon
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Container(
          alignment: Alignment.topCenter,
          child: Text(
            'SmartPlace',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pushNamed(context, 'StartPage');
              }),
        ],
      ),

      // using ListView as my main widget for the body to use google ads later. Google ads quantity is TBD.
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 80.0,
            color: Colors.transparent,
            child: Image.asset(
              'assets/images/cover.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Divider(),
          //using container to limit the height and width of the screen.
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              // Row widget was used to have multiple flatbuttons on the same row.
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'Chat');
                          },
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            child: Image.asset('assets/images/chat.png'),
                          ),
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(color: Colors.cyan, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return UtilityPage();
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            child: Image.asset('assets/images/utility.png'),
                          ),
                        ),
                        Text(
                          'Utility Bills',
                          style: TextStyle(color: Colors.cyan, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return AnnouncementPage();
                              }),
                            );
                          },
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            child:
                                Image.asset('assets/images/announcement.png'),
                          ),
                        ),
                        Text(
                          'Announcement',
                          style: TextStyle(color: Colors.cyan, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 20.0, color: Colors.grey),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'eventManager');
                          },
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            child: Image.asset('assets/images/event.png'),
                          ),
                        ),
                        Text(
                          'Event Manager',
                          style: TextStyle(color: Colors.cyan, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'feedback');
                          },
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            child: Image.asset('assets/images/feedback.jpg'),
                          ),
                        ),
                        Text(
                          'Feedback',
                          style: TextStyle(color: Colors.cyan, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 20.0, color: Colors.grey),
          Container(
            padding: const EdgeInsets.only(top: 15.0),
            alignment: Alignment.center,
            child: Text(
              "Services",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(5),
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100.0,
                          child: Image.asset(
                            'assets/images/serv1.jpg',
                            fit: BoxFit.fitHeight,
                          )),
                      Text("Plumbing"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100.0,
                          child: Image.asset(
                            'assets/images/serv2.jpg',
                            fit: BoxFit.fitHeight,
                          )),
                      Text("Cleaning"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100.0,
                          child: Image.asset(
                            'assets/images/serv3.jpg',
                            fit: BoxFit.fitHeight,
                          )),
                      Text("Delivery"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100.0,
                          child: Image.asset(
                            'assets/images/serv4.jpg',
                            fit: BoxFit.fitHeight,
                          )),
                      Text("Wiring"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100.0,
                          child: Image.asset(
                            'assets/images/serv5.jpg',
                            fit: BoxFit.fitHeight,
                          )),
                      Text("Laundry"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
