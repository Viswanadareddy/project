import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 200, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/knife_spoon.png',
                    height: 60, width: 60),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  'WELCOME BACK!',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  hintText: 'Email Adress',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.black38,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.lock_outline_rounded, color: Colors.white),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.black38,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 3),
              Text(
                'Forgot password',
                style: TextStyle(fontSize: 14, color: Colors.white),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 6),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
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
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          color: Colors.white70),
                      textAlign: TextAlign.center,
                    )),
              ),
            ],
          ),
        ),
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