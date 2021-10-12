import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'bottomNavigationBar');
            // print("Its clicked");
          },
        ),
        title: const Text('Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.black87,
            child: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/cart.png'),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Text('Your Cart is Empty',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                SizedBox(height: 10, width: 10),
                TextButton(
                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: FittedBox(
                      child: Text(
                        'LETS SHOP',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // print('Booooom');
                  },
                )
              ],
            )),
          ),
        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
