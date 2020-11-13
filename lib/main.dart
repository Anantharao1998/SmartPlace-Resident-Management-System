import 'package:flutter/material.dart';
import 'package:projectapp/Home.dart';
import 'package:projectapp/Login.dart';
import 'package:projectapp/Register.dart';
import 'package:projectapp/chat.dart';
import 'package:projectapp/event_add.dart';
import 'package:projectapp/event_manager.dart';
import 'package:projectapp/feedback.dart';
import 'package:projectapp/feedback_add.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StartPage.id,
      routes: {
        StartPage.id: (context) => StartPage(),
        HomePage.id: (context) => HomePage(),
        RegisterPage.id: (context) => RegisterPage(),
        LoginPage.id: (context) => LoginPage(),
        ChatPage.id: (context) => ChatPage(),
        EventPage.id: (context) => EventPage(),
        EventAddPage.id: (context) => EventAddPage(),
        FeedbackPage.id: (context) => FeedbackPage(),
        FeedbackAddPage.id: (context) => FeedbackAddPage(),
      },
    ),
  );
}

class StartPage extends StatelessWidget {
  static const String id = "StartPage";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/backg4.jpg',
              ),
              fit: BoxFit.fitHeight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'logo',
            child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(200.0),
                    child: Image(image: AssetImage('assets/images/logo.jpg')))),
          ),
          SizedBox(
            height: 100.0,
          ),
          Material(
            elevation: 10.0,
            borderRadius: BorderRadius.circular(10.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: Text('Log In'),
            ),
          ),
          SizedBox(height: 50.0),
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Registration');
              },
              child: Text(
                'Sign up here',
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
