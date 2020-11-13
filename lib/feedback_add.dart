import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

class FeedbackAddPage extends StatefulWidget {
  static const String id = 'FeedbacksAdd';

  @override
  _FeedbackAddPageState createState() => _FeedbackAddPageState();
}

class _FeedbackAddPageState extends State<FeedbackAddPage> {
  String feedbackTitle;

  String feedbackDate;

  String feedbackDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('Feedbacks'),
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
                  feedbackTitle = value;
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
                  feedbackDate = value;
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
                  feedbackDescription = value;
                },
              ),
              Expanded(
                child: Center(
                  child: MaterialButton(
                    color: Colors.lightBlueAccent,
                    elevation: 10.0,
                    onPressed: () {
                      _firestore.collection('feedbacks').add({
                        'title': feedbackTitle,
                        'date': feedbackDate,
                        'description': feedbackDescription,
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
