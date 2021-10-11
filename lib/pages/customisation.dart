import 'dart:ui';

import 'package:flutter/material.dart';

class Customisation extends StatefulWidget {
  const Customisation({Key? key}) : super(key: key);

  @override
  _CustomisationState createState() => _CustomisationState();
}

class _CustomisationState extends State<Customisation> {
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;
  bool _hasBeenPressed6 = false;
  bool _hasBeenPressed7 = false;
  bool _hasBeenPressed8 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
              padding: const EdgeInsets.only(left: 20, top: 20),
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
                        onPressed: () => {
                          setState(() {
                            _hasBeenPressed1 = !_hasBeenPressed1;
                          })
                        },
                        child: Text(
                          'Small',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Colors.blueAccent, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        fillColor:
                            _hasBeenPressed1 ? Colors.blueAccent : Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 15),
                      child: RawMaterialButton(
                        onPressed: () => {
                          setState(() {
                            _hasBeenPressed2 = !_hasBeenPressed2;
                          })
                        },
                        child: Text(
                          'Medium',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blueAccent, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor:
                            _hasBeenPressed2 ? Colors.blueAccent : Colors.black,
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: RawMaterialButton(
                          onPressed: () => {
                            setState(() {
                              _hasBeenPressed3 = !_hasBeenPressed3;
                            })
                          },
                          child: Text(
                            'Large',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.blueAccent, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          fillColor: _hasBeenPressed3
                              ? Colors.blueAccent
                              : Colors.black,
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
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Text(
                          'Topping',
                          style: TextStyle(
                            fontSize: 18.0,
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            RawMaterialButton(
                              onPressed: () => {
                                setState(() {
                                  _hasBeenPressed4 = !_hasBeenPressed4;
                                })
                              },
                              child: _hasBeenPressed4
                                  ? Text(
                                      'Added',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  : Text(
                                      'Add +5',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.blueAccent, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: _hasBeenPressed4
                                  ? Colors.blueAccent
                                  : Colors.black,
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            RawMaterialButton(
                              onPressed: () => {
                                setState(() {
                                  _hasBeenPressed5 = !_hasBeenPressed5;
                                })
                              },
                              child: _hasBeenPressed5
                                  ? Text(
                                      'Added',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  : Text(
                                      'Add +5',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.blueAccent, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: _hasBeenPressed5
                                  ? Colors.blueAccent
                                  : Colors.black,
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 175,
                            ),
                            RawMaterialButton(
                              onPressed: () => {
                                setState(() {
                                  _hasBeenPressed6 = !_hasBeenPressed6;
                                })
                              },
                              child: _hasBeenPressed6
                                  ? Text(
                                      'Added',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  : Text(
                                      'Add +10',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.blueAccent, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: _hasBeenPressed6
                                  ? Colors.blueAccent
                                  : Colors.black,
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 175,
                            ),
                            RawMaterialButton(
                              onPressed: () => {
                                setState(() {
                                  _hasBeenPressed7 = !_hasBeenPressed7;
                                })
                              },
                              child: _hasBeenPressed7
                                  ? Text(
                                      'Added',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  : Text(
                                      'Add +5',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.blueAccent, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: _hasBeenPressed7
                                  ? Colors.blueAccent
                                  : Colors.black,
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
                      onPressed: () {
                        Navigator.pushNamed(context, 'cartpage');
                      },
                      child: Text(
                        ' ADD TO CART ',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blueAccent, width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: Colors.blueAccent,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
