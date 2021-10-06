import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/values/values.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({Key? key}) : super(key: key);

  @override
  _BottomBarNavigationState createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  @override
  Widget build(BuildContext context) {
    int _selectedindex = 0;
    void _onItemTap(int index) {
      setState(() {
        _selectedindex = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(color: Color(0xFF2c2b2b)),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            title: Text(
              'Near By',
              style: TextStyle(color: Color(0xFF2c2b2b)),
            )),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shoppingCart),
            title: Text(
              'Cart',
              style: TextStyle(color: Color(0xFF2c2b2b)),
            )),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            title: Text(
              'Profile',
              style: TextStyle(color: Color(0xFF2c2b2b)),
            ))
      ],
      currentIndex: _selectedindex,
      selectedItemColor: Color(0xFFfd5353),
      onTap: _onItemTap,
    );
  }
}
