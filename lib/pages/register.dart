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
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(
            child: Image.asset('assets/knife_logo_purple.jpg',
                height: 60, width: 60),
          ),
          SizedBox(
            height: 15,
            width: double.infinity,
          ),
          Text(
            'CREATE ACCOUNT',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
            width: double.infinity,
          ),
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
                      Icons.person_outline_outlined,
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
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.black38,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
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
                  hintText: 'Email Address',
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
          Center(
            child: SizedBox(
              width: 250,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                padding: EdgeInsets.all(10),
                child: Text('REGISTER'),
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
                  Navigator.pushNamed(context, 'login');
                },
                child: Text(
                  'I already have an account',
                  style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                      color: Colors.white70),
                  textAlign: TextAlign.center,
                )),
          ),
        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
