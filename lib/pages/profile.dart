import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                      //backgroundColor: white,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dwayne Johnson',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Dwa@son.com',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 330,
                height: 50,
                child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: Colors.indigoAccent[400],
                  child: Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          //contentPadding: EdgeInsets.symmetric(),
                          leading: Icon(
                            Icons.info_outline_rounded,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Gold member',
                            style: TextStyle(color: Colors.amber[300]),
                          ),
                          trailing: Text(
                            'Upgrade',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                //height:
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Account balance',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          '\$ 50.00',
                          style: TextStyle(
                              color: Colors.indigoAccent[700],
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Refer Friends',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Earn \$100',
                              style: TextStyle(
                                color: Colors.indigoAccent[700],
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          color: Colors.white,
                          iconSize: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.account_balance_wallet_outlined,
                    color: Colors.white),
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
                  iconSize: 15,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.location_on_outlined, color: Colors.white),
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
                  iconSize: 15,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.payment, color: Colors.white),
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
                  iconSize: 15,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.support_agent_rounded, color: Colors.white),
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
                  iconSize: 15,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.security, color: Colors.white),
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
                  iconSize: 15,
                ),
              ),
              Center(
                child: SizedBox(
                  width: 100,
                  child: RawMaterialButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    padding: EdgeInsets.all(10),
                    child: Text('LOGOUT'),
                    fillColor: Colors.indigoAccent[400],
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
