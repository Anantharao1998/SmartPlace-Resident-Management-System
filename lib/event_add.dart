import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

class EventAddPage extends StatefulWidget {
  static const String id = 'EventAdd';

  @override
  _EventAddPageState createState() => _EventAddPageState();
}

class _EventAddPageState extends State<EventAddPage> {
  String eventTitle;

  String eventDate;

  String eventDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('Event Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              TextField(
                onChanged: (value) {
                  eventTitle = value;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              TextField(
                onChanged: (value) {
                  eventDate = value;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              TextField(
                onChanged: (value) {
                  eventDescription = value;
                },
              ),
              Expanded(
                child: Center(
                  child: MaterialButton(
                    color: Colors.lightBlueAccent,
                    elevation: 10.0,
                    onPressed: () {
                      _firestore.collection('events').add({
                        'title': eventTitle,
                        'date': eventDate,
                        'description': eventDescription,
                      });
                      Navigator.pop(context);
                    },
                    child: Text('Add'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
