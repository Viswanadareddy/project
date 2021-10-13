import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/models/carsousel.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

List food = [
  {0: "assets/dessert.jpeg", 1: "Dessert", 2: "\$14.99"},
  {0: "assets/beverage.jpeg", 1: "Beverage", 2: "\$14.99"},
  {0: "assets/salad_dish.jpeg", 1: "Salad dish", 2: "\$16.59"},
  {0: "assets/food_dish.jpeg", 1: "Food dish", 2: "\$29.99"},
  {0: "assets/pasta.jpeg", 1: "Pasta", 2: "\$14.99"},
  {0: "assets/burger.jpeg", 1: "Burger", 2: "\$14.99"},
  {0: "assets/Biryani.jpg", 1: "Biryani", 2: "\$16.59"},
  {0: "assets/Noodles.jpg", 1: "Noodles", 2: "\$14.99"}
];

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Hey hungry',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'cartpage');
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
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Categories",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                NewsCarousel(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 30, top: 15, bottom: 15, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Recommended",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blueAccent[700],
                          minimumSize: Size.zero,
                          padding: EdgeInsets.all(0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text('View all'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: (food.length.toDouble() / 2).toInt(),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                int a = 2 * i;
                int b = 2 * i + 1;
                return Row(
                  children: [
                    Container(
                      height:
                          ((MediaQuery.of(context).size.width - 90) / 2) + 41,
                      margin: EdgeInsets.only(left: 20, bottom: 15),
                      width: (MediaQuery.of(context).size.width - 90) / 2,
                      //padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                              height:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(food[a][0]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)))),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food[a][1],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    food[a][2],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              //Expanded(child: Container()),
                              SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ((MediaQuery.of(context).size.width - 90) / 2) +
                          31 +
                          10,
                      width: (MediaQuery.of(context).size.width - 90) / 2,
                      margin: EdgeInsets.only(left: 30, bottom: 15, right: 20),
                      //padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                              height:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(food[b][0]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)))),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food[b][1],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    food[b][2],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              //Expanded(child: Container()),
                              SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
