import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200),
          Center(
            child: Image.asset('assets/knife_logo_purple.jpg'),
          ),
          Text(
            'CREATE ACCOUNT',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          TextField()
        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
