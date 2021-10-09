import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiSwitch extends StatefulWidget {
  @override
  _MultiSwitchState createState() => _MultiSwitchState();
}

class _MultiSwitchState extends State<MultiSwitch> {
  bool val1 = true;
  bool val2 = false;
  bool val3 = false;
  bool val4 = true;
  bool val5 = true;
  bool val6 = true;
  bool val7 = false;
  bool val8 = true;
  bool val9 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  onChangeFunction4(bool newValue4) {
    setState(() {
      val4 = newValue4;
    });
  }

  onChangeFunction5(bool newValue5) {
    setState(() {
      val5 = newValue5;
    });
  }

  onChangeFunction6(bool newValue6) {
    setState(() {
      val6 = newValue6;
    });
  }

  onChangeFunction7(bool newValue7) {
    setState(() {
      val7 = newValue7;
    });
  }

  onChangeFunction8(bool newValue8) {
    setState(() {
      val8 = newValue8;
    });
  }

  onChangeFunction9(bool newValue9) {
    setState(() {
      val9 = newValue9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customSwitch('Show Notifications', bool, val1, onChangeFunction1),
          customSwitch('Allow icon badge', bool, val2, onChangeFunction2),
          Divider(
            color: Colors.white30,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('PUSH NOTIFICATION',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          customSwitch('Show On Lock Screen', bool, val3, onChangeFunction3),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('Show notifications when mobile is locked',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          customSwitch('Reactions', bool, val4, onChangeFunction4),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text(
                  'Receive notification when someone reacts\n to your message',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          customSwitch('Sounds', bool, val5, onChangeFunction5),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('Play sound for new message',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          customSwitch('Tips & Tricks', bool, val6, onChangeFunction6),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('Receive notification when new item features',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          Divider(
            color: Colors.white30,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('IN-APP NOTIFICATION',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          customSwitch('In-app sounds', bool, val7, onChangeFunction7),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('Play notification sound when using app',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          customSwitch(
              'Chat Banner Notifications', bool, val8, onChangeFunction8),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('Show banner notifications when new message\n arrive',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          customSwitch('Tips & Tricks', bool, val9, onChangeFunction9),
          Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Text('Receive notification when new item features',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}

Widget customSwitch(String text, bool, val, Function onChangeMethod) {
  return Padding(
    padding: const EdgeInsets.only(top: 7.0, left: 13.0, right: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            )),
        Spacer(),
        CupertinoSwitch(
            trackColor: Colors.grey,
            activeColor: Colors.deepPurple,
            value: val,
            onChanged: (newValue) {
              onChangeMethod(newValue);
            })
      ],
    ),
  );
}
