import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/helper/horizontal_listview.dart';
import 'package:ecommerce/ui/pages/cart.dart';
import 'package:flutter/material.dart';

import 'helper/products.dart';

void main() {
  runApp(MaterialApp(
    home: EcommerceApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class EcommerceApp extends StatefulWidget {
  @override
  _EcommerceAppState createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      color: Colors.white,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/c2.JPG'),
          AssetImage('assets/c3.jpeg'),
          AssetImage('assets/c4.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 5,
        dotColor: Colors.white,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        // TO REMOVE SHADOW ON TOOLBAR
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Shop app '),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.white70,
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white70,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // HEADER
            UserAccountsDrawerHeader(
              accountName: Text('Usama elgindy'),
              accountEmail: Text(
                'usamaelgindy2@gmail.com',
                style: TextStyle(color: Colors.grey.shade900),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            // body
            ListTile(
              title: Text('Home Page'),
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('My Account'),
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('My Orders'),
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.red,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('Shopping card'),
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => new Cart(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Favourites'),
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Category'),
          ),
          // Horizontal list view begins here
          HorizontalListView(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Recent Products'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
