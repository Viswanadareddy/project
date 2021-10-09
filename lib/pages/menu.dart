import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[900], actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'setting');
          },
          icon: Icon(Icons.shopping_cart),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'notifications');
          },
          icon: Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'setting');
          },
          icon: Icon(Icons.settings),
        ),
      ]),
    );
  }
}
