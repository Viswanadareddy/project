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
import 'package:project/unbording/MyHomePage.dart';
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
          //'products': (context) => ProductListPage(),
          //'products_detail': (context) => ProductDetailsPage(),
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

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
  
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}*/

/*class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 5000), () {
      Navigator.pushNamed(context, 'setting');
    });
    return Container();
  }
}*/
