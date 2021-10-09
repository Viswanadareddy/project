import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "Favourite",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 170,
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/dessert.jpeg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                  height: 150,
                  width: 155,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/beverage.jpeg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Dessert',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 135),
                  child: Text(
                    'Beverage',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    '\$14.99',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 146),
                  child: Text(
                    '\$14.99',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  width: 170,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/salad_dish.jpeg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                width: 30,
              ),
              Container(
                  height: 150,
                  width: 155,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 13),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/food_dish.jpeg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Salad dish',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 110),
                  child: Text(
                    'Food dish',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 39),
                  child: Text(
                    '\$16.59',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 142),
                  child: Text(
                    '\$29.99',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  width: 170,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/pasta.jpeg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                width: 30,
              ),
              Container(
                  height: 150,
                  width: 155,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(left: 13),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/burger.jpeg"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text(
                    'Pasta',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: Text(
                    'Burger',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text(
                    '\$14.99',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 146),
                  child: Text(
                    '\$14.99',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
        ],
      ),
      /* bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.black54,
              icon: Icon(Icons.fastfood, color: Colors.white),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on, color: Colors.white), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.white),
              label: 'favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              label: 'shopping cart'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'shopping cart',
          ),
        ],
      ),*/
    );
  }
}
