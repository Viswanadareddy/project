import 'package:flutter/material.dart';
import 'package:project/theme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profile_image.jpeg'),
                      minRadius: 30,
                      backgroundColor: white,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dwayne Johnson',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text('Dwa@son.com',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 350,
                //height: 40,
                child: RawMaterialButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(5),
                  fillColor: Colors.blue,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(),
                          leading: Icon(
                            Icons.info_outline_rounded,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Gold member',
                            style: TextStyle(color: Colors.amber[600]),
                          ),
                          trailing: Text(
                            'Upgrade',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                //height:
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Account balance',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          '\$ 50.00',
                          style: TextStyle(color: Colors.indigoAccent[700]),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Refer Friends',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Earn \$100.00',
                              style: TextStyle(color: Colors.indigoAccent[700]),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          color: Colors.white,
                          iconSize: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.person_outline, color: Colors.white),
                title: Text(
                  'Add money to wallet',
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
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.person_outline, color: Colors.white),
                title: Text(
                  'Adress setting',
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
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.person_outline, color: Colors.white),
                title: Text(
                  'Payment setting',
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
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.person_outline, color: Colors.white),
                title: Text(
                  'Customer support',
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
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.person_outline, color: Colors.white),
                title: Text(
                  'Terms',
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
              Center(
                child: SizedBox(
                  width: 100,
                  child: RawMaterialButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(10),
                    child: Text('LOGOUT'),
                    fillColor: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

/*
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _options
                    .map(
                      (name, icon) => MapEntry(
                        name,
                        _CustomCard(name: name, icon: icon),
                      ),
                    )
                    .values
                    .toList(),
              ),
              SizedBox(height: 30),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.favorite_rounded),
                title: Text('Favourite'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.notifications_active_rounded),
                title: Text('Notification'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.visibility),
                title: Text('Appearence'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.help_outlined),
                title: Text('Help & Support'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: Text('More Screens Coming soon...'),
              ),*/
//],
