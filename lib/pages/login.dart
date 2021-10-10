import 'package:flutter/material.dart';
import 'package:project/values/values.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 250),
          Center(
            child: Image.asset('assets/knife_spoon.png', height: 60, width: 60),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              'WELCOME BACK!',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Center(
            child: Container(
              width: 340,
              height: 80,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Container(
                    //padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                    //color: Colors.blueAccent,
                    child: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.lightBlueAccent,
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  //color: Colors.blue,
                  /* decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),*/
                  hintText: 'Email Adress',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.black38,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              width: 340,
              height: 80,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  //fillColor: Colors.grey[900],
                  //filled:true,
                  prefixIcon: Container(
                    child: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                    ),
                    //color: Colors.blue,
                    //padding: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      //color: Colors.lightBlueAccent,
                      // border: Border.all(width: 5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.black38,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Forgot password',
            style: TextStyle(fontSize: 14, color: Colors.white),
            textAlign: TextAlign.right,
          ),
          Center(
            child: SizedBox(
              width: 350,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'bottomNavigationBar');
                },
                padding: EdgeInsets.all(10),
                child: Text('LOGIN'),
                fillColor: Colors.blue,
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Text(
                  'I haven\'t an account ',
                  style: TextStyle(
                      fontSize: 18, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                )),
          ),
        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}





                                     /*       Text(
              'I haven\'t an account ',
              style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),*/