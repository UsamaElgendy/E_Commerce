import 'package:flutter/material.dart';

class CardProducts extends StatefulWidget {
  @override
  _CardProductsState createState() => _CardProductsState();
}

class _CardProductsState extends State<CardProducts> {
  var products_on_the_card = [
    {
      "name": "Blazer",
      "picture": "assets/products/blazer1.jpeg",
      "price": 50,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Blazer2",
      "picture": "assets/products/blazer2.jpeg",
      "price": 80,
      "size": "L",
      "color": "Black",
      "quantity": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, postiosn) {
        return SingleCardProducts(
          products_on_the_card[postiosn]["name"],
          products_on_the_card[postiosn]["picture"],
          products_on_the_card[postiosn]["price"],
          products_on_the_card[postiosn]["size"],
          products_on_the_card[postiosn]["color"],
          products_on_the_card[postiosn]["quantity"],
        );
      },
      itemCount: products_on_the_card.length,
    );
  }
}

class SingleCardProducts extends StatelessWidget {
  final card_prod_name;
  final card_prod_pricture;
  final card_prod_price;
  final card_prod_size;
  final card_prod_color;
  final card_prod_qty;

  SingleCardProducts(
    this.card_prod_name,
    this.card_prod_pricture,
    this.card_prod_price,
    this.card_prod_size,
    this.card_prod_color,
    this.card_prod_qty,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          card_prod_pricture,
          height: 80.0,
          width: 80.0,
        ),
        title: Text(card_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // this sections of the size of the products
                Text('size:'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    card_prod_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                // this sections of the color of the products
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 8, top: 8, bottom: 8),
                  child: Text('color:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    card_prod_color,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
//============== this sections of the color of the price ==========
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${card_prod_price}",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.arrow_drop_up,
                    size: 50,
                  ),
                  onPressed: () {}),
              new Text(
                "${card_prod_qty}",
                style: TextStyle(fontSize: 24),
              ),
              new IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 50,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
