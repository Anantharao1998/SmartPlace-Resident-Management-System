import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth mAuth = FirebaseAuth.instance;
AuthResult user;

class RegisterPage extends StatefulWidget {
  static const String id = "Registration";
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('Register'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    child: Image(
                      image: AssetImage('assets/images/logo.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your e-mail",
                    border: const OutlineInputBorder(),
                  ),
                ),
                TextField(
                  autocorrect: false,
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: const OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.cyanAccent,
                  child: FlatButton(
                    onPressed: () {
                      signUpWithEmailPassword();
                    },
                    child: Text('Confirm'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void signUpWithEmailPassword() async {
    user = await mAuth.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    if (user != null) {
      Navigator.pushNamed(context, 'HomePage');
    }
  }
}
