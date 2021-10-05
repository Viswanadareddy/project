import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 400),
          Center(
              child: Text(
            'WELCOME BACK!',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          Center(
              child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Email Adress',
                fillColor: Colors.white70,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          )),
          SizedBox(height: 10),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
