import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQueryData().size.height;
    double w = MediaQueryData().size.width;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                //Navigator.pushNamed(context, 'setting');
                /*Navigator.push(context, RotationRoute(SignInPage()));*/
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
          backgroundColor: Colors.grey[900],
          title: Text(
            "Wallet",
            style: (TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.white)),
          ),
          centerTitle: true),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3.0),
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return _featuredList(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "RECENT",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return _recentList(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "LAST TRANSACTION",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            height: 500,
            width: double.infinity,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Eliza Taylor",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "22 march 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "+ \$ 400",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Ryan Reynolds",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "31 May 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "- \$ 200",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Natalie Dormer",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "23 August 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "+ \$ 80",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Robert Pattinson",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "11 April 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "+ \$ 528",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "John Snow",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "16 July 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "+ \$ 200",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Samuel L Jackson",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "29 September 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "- \$ 170",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Mark",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "18 April 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "- \$ 290",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Sathoshi",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "17 April 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "+ \$ 50",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      decoration:
                          BoxDecoration(color: Colors.grey[900], boxShadow: [
                        BoxShadow(
                            color: Colors.white.withAlpha(100),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0),
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  "Mosk",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "15 April 2020",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            // Image.asset(
                            //   "assets/images/${post["image"]}",
                            //   height: double.infinity,
                            // )
                            Text(
                              "+ \$ 300",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 70.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
            child: Icon(
              Icons.flash_on_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
            backgroundColor: Colors.blue,
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

Widget _featuredList(BuildContext context) {
  return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, 'category');
      },
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.greenAccent[700],
            ),
            child: Text(
              "NEW PAYMENT",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            alignment: Alignment.center,
            width: 320,
            height: 280,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.yellow[200],
            ),
            child: Text(
              "YOUR ACCOUNT",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            alignment: Alignment.center,
            width: 320,
            height: 280,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.blue,
            ),
            child: Text(
              "+ ADD CARD",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            alignment: Alignment.center,
            width: 320,
            height: 280,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ],
      ));
}

Widget _recentList(BuildContext context) {
  return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, 'category');
      },
      child: Row(
        children: <Widget>[
          MaterialButton(
            shape: CircleBorder(),
            color: Colors.indigoAccent[400],
            padding: EdgeInsets.all(15),
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/person1.jpg'))),
                alignment: Alignment.center,
                width: 70,
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              Text(
                'Michael',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/person2.jpg"))),
                alignment: Alignment.center,
                width: 70,
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              Text(
                'Priya',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/person3.jpeg'))),
                alignment: Alignment.center,
                width: 70,
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              Text(
                'Sam',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/person4.jpg'))),
                alignment: Alignment.center,
                width: 70,
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              Text(
                'Geetha',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/person5.jpg'))),
                alignment: Alignment.center,
                width: 70,
                height: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              Text(
                'Raymond',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ));
}
