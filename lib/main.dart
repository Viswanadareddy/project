import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:project/pages/customisation.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/menu.dart';
import 'package:project/pages/notifications.dart';
import 'package:project/pages/payment.dart';
import 'package:project/pages/register.dart';
import 'package:project/pages/setting.dart';
import 'package:project/pages/profile.dart';
import 'package:project/widgets/bottomNavigationBar.dart';
//import 'package:project/pages/customisation.dart';
import 'package:project/pages/cart.dart';
import 'package:project/pages/favouritepage.dart';
import 'package:project/pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Onbording(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        scrollBehavior: Mycustomscroll(),
        //themeMode: ThemeMode.dark,
        routes: {
          'setting': (context) => Setting(),
          'notifications': (context) => MultiSwitch(),
          'favouritepage': (context) => FavouritePage(),
          'bottomNavigationBar': (context) => BottomBarNavigation(),
          'payments': (context) => Payment(),
          'login': (context) => LoginPage(),
          'register': (context) => RegisterPage(),
          'profile': (context) => Profile(),
          'menu': (context) => MenuPage(),
          'customisation': (context) => Customisation(),
          'cartpage': (context) => CartPage(),
          'onboarding': (context) => Onbording(),
        },
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.redAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: TextTheme(
                headline1: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                headline5: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700]),
                bodyText1: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
                bodyText2: TextStyle(fontSize: 20.0, color: Colors.white))),
      );
}

class Mycustomscroll extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
