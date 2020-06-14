import 'package:ecommerce/ui/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer2",
      "picture": "assets/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "assets/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Black dress",
      "picture": "assets/products/dress2.jpeg",
      "old_price": 160,
      "price": 140,
    },
    {
      "name": "Hills",
      "picture": "assets/products/hills1.jpeg",
      "old_price": 160,
      "price": 140,
    },
    {
      "name": "Hills2",
      "picture": "assets/products/hills2.jpeg",
      "old_price": 160,
      "price": 140,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, position) {
          return SingleProduct(
            product_list[position]["name"],
            product_list[position]["picture"],
            product_list[position]["old_price"],
            product_list[position]["price"],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  SingleProduct(
      this.prod_name, this.prod_pricture, this.prod_old_price, this.prod_price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text('tag 1'),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                prod_name,
                prod_price,
                prod_old_price,
                prod_pricture,
              ),
            )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        prod_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      "\$${prod_price}",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              child: Image.asset(
                prod_pricture,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
