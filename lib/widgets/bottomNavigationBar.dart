import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/pages/customisation.dart';
import 'package:project/pages/payment.dart';
import 'package:project/values/values.dart';
import 'package:project/pages/favourite.dart';
import 'package:project/pages/profile.dart';
import 'package:project/pages/menu.dart';
import 'package:project/pages/customisation.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({Key? key}) : super(key: key);

  @override
  _BottomBarNavigationState createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MenuPage(),
    Customisation(),
    FavouritePage(),
    Payment(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    int _selectedindex = 0;
    void _onItemTap(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_sharp, color: Colors.white70),
              title: Text(
                '',
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined, color: Colors.white70),
              title: Text(
                '',
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              title: Text(
                '',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.request_page_outlined,
                color: Colors.white70,
              ),
              title: Text(
                '',
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined, color: Colors.white70),
              title: Text(
                '',
              ))
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF197602),
        backgroundColor: Colors.grey,
        onTap: _onItemTap,
      ),
      body: _children[_currentIndex],
    );
  }
}
