import 'package:flutter/material.dart';
//import 'package:project/theme.dart';
import 'package:project/pages/login.dart';
import 'package:project/widgets/searchWidgets.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Setting', style: TextStyle(fontSize: 22)),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'bottomNavigationBar');
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SearchWidget(),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(Icons.person_outline, color: Colors.white),
              title: Text(
                'Account',
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'profile');
                },
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.notifications_active_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'notifications');
                },
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Apperance',
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.lock_open,
                color: Colors.white,
              ),
              title: Text(
                'Privacy & Security',
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.support_agent_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Help & Support',
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.help_outline_outlined,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

/*GestureDetector buildAccountOption(BuildContext context, String title) {
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
buildAccountOption(context, 'Account'),
            buildAccountOption(context, 'Notifications'),
            buildAccountOption(context, 'Appearance'),
            buildAccountOption(context, 'Privacy & Security'),
            buildAccountOption(context, 'Help & Support'),
            buildAccountOption(context, 'About')*/