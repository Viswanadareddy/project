import 'package:flutter/material.dart';
import 'package:project/theme.dart';
import 'package:project/pages/login.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting', style: TextStyle(fontSize: 22)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildAccountOption(context, 'Account'),
            buildAccountOption(context, 'Notifications'),
            buildAccountOption(context, 'Appearance'),
            buildAccountOption(context, 'Privacy & Security'),
            buildAccountOption(context, 'Help & Support'),
            buildAccountOption(context, 'About'),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 0),
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 15),
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          SizedBox(width: 20),
          Icon(Icons.arrow_forward_ios, color: Colors.white)
        ],
      ),
    ),
  );
}
