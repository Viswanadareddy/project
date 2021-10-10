import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:project/pages/customisation.dart';
import 'package:project/pages/favourite.dart';
import 'package:project/pages/login.dart';
import 'package:project/pages/menu.dart';
import 'package:project/pages/notifications.dart';
import 'package:project/pages/payment.dart';
import 'package:project/pages/register.dart';
import 'package:project/pages/setting.dart';
import 'package:project/pages/profile.dart';
import 'package:project/onbording/MyHomePage.dart';
import 'package:project/widgets/bottomNavigationBar.dart';
import 'package:project/pages/customisation.dart';
import 'package:project/pages/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MyHomePage(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        //themeMode: ThemeMode.dark,
        routes: {
          'setting': (context) => Setting(),
          'notifications': (context) => MultiSwitch(),
          'favourite': (context) => FavouritePage(),
          'bottomNavigationBar': (context) => BottomBarNavigation(),
          'payments': (context) => Payment(),
          'login': (context) => LoginPage(),
          'register': (context) => RegisterPage(),
          'profile': (context) => Profile(),
          'menu': (context) => MenuPage(),
          'customisation': (context) => Customisation(),
          'cartpage': (context) => CartPage(),
        },
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.redAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: TextTheme(
                headline1: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                headline5: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700]),
                bodyText1: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
                bodyText2: TextStyle(fontSize: 20.0, color: Colors.white))),
      );
}
