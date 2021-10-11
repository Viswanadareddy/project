import 'package:flutter/material.dart';
import 'package:project/pages/customisation.dart';
import 'package:project/pages/payment.dart';
import 'package:project/pages/favourite.dart';
import 'package:project/pages/profile.dart';
import 'package:project/pages/menu.dart';

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
    /*void _onItemTap(int index) {
      setState(() {
        _currentIndex = index;
      });
    }*/

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              5,
              (index) => IconButton(
                icon: Opacity(
                  opacity: 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        _bottomappbaritems[index],
                        color: index == _currentIndex
                            ? Colors.blueAccent[700]
                            : null,
                      ),
                      index == _currentIndex ? Spacer() : SizedBox(),
                      index == _currentIndex ? _builddot() : SizedBox.shrink(),
                    ],
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
      body: _children[_currentIndex],
    );
  }
}

Widget _builddot() {
  return Container(
    width: 6,
    height: 6,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blueAccent[700],
    ),
  );
}

final List<IconData> _bottomappbaritems = const <IconData>[
  Icons.food_bank_sharp,
  Icons.category_outlined,
  Icons.favorite_border,
  Icons.request_page_outlined,
  Icons.person_outline_rounded,
];



/*type: BottomNavigationBarType.fixed,
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
      ),*/



      //For Floating Button
      /*onPressed: () {
                  setState(() {
                    if (index != 2) {
                      _currentindex = index;
                    } else {}
                  });
                },*/