import 'package:flutter/material.dart';

class FavouritePages extends StatefulWidget {
  const FavouritePages({Key? key}) : super(key: key);

  @override
  _FavouritePagesState createState() => _FavouritePagesState();
}

List infos = [
  {0: "assets/dessert.jpeg", 1: "Dessert", 2: "\$14.99"},
  {0: "assets/beverage.jpeg", 1: "Beverage", 2: "\$14.99"},
  {0: "assets/salad_dish.jpeg", 1: "Salad dish", 2: "\$16.59"},
  {0: "assets/food_dish.jpeg", 1: "Food dish", 2: "\$29.99"},
  {0: "assets/pasta.jpeg", 1: "Pasta", 2: "\$14.99"},
  {0: "assets/burger.jpeg", 1: "Burger", 2: "\$14.99"}
];

class _FavouritePagesState extends State<FavouritePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          "Favourites",
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),*/
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Text('Favourites'),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: (infos.length.toDouble() / 2).toInt(),
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
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                width:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(infos[a][0]),
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
                                      infos[a][1],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      infos[a][2],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Colors.blueAccent[700],
                                ),
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
                        margin:
                            EdgeInsets.only(left: 30, bottom: 15, right: 20),
                        //padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                                height:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                width:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(infos[b][0]),
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
                                      infos[b][1],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      infos[b][2],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Colors.blueAccent[700],
                                ),
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
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
