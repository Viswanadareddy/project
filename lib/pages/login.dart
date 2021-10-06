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
                    prefixIcon: Container(
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      //color: Colors.blue,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(0.1),
                      ),
                    ),
                    hintText: 'Email Adress',
                    fillColor: Colors.white70,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                  ))),
          SizedBox(height: 10),
          Center(
              child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      child: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.white,
                      ),
                      //color: Colors.blue,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(0.1),
                      ),
                    ),
                    hintText: 'Password',
                    fillColor: Colors.white70,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                  ))),
          Text(
            'Forgot password',
            style: TextStyle(fontSize: 14, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          Text(
            'I haven\'t an account ',
            style: TextStyle(
                fontSize: 14,
                decoration: TextDecoration.underline,
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
