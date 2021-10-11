import 'dart:ui';

import 'package:flutter/material.dart';

class Customisation extends StatefulWidget {
  const Customisation({Key? key}) : super(key: key);

  @override
  _CustomisationState createState() => _CustomisationState();
}

class _CustomisationState extends State<Customisation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(
        children: [
          Image.asset('assets/food.jpg'),
          Padding(
            padding: const EdgeInsets.only(
              right: 180,
              left: 8,
              top: 15,
            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'Customisation',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270, top: 20),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                'Select Size',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: RawMaterialButton(
                      onPressed: () {
                        print('pressed');
                      },
                      child: Text(
                        'Small',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      fillColor: Colors.lightBlueAccent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30, left: 30, top: 15),
                    child: RawMaterialButton(
                      onPressed: () {
                        print('pressed');
                      },
                      child: Text(
                        'Medium',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      fillColor: Colors.blueAccent,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: RawMaterialButton(
                        onPressed: () {
                          print('pressed');
                        },
                        child: Text(
                          'Large',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        fillColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black26,
            height: 260,
            width: double.infinity,
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 270, top: 20),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        'Topping',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text(
                              'Cheese',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.blueAccent,
                            child: Text(
                              'Add +5',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text(
                              'Tomato',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.lightBlueAccent,
                            child: Text(
                              'Added',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text(
                              'Corn',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 175,
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.blueAccent,
                            child: Text(
                              'Add +10',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Text(
                              'Stew',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 175,
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.blueAccent,
                            child: Text(
                              'Add +5',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 20),
                    child: Text(
                      'Hungry? QuickOrder',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              )),
          Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 25),
                    child: Text(
                      'Order',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    fillColor: Colors.blueAccent,
                    child: Text(
                      'Pay 45',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
