import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categories(
            'assets/cats/tshirt.png',
            "T-shirts",
          ),
          Categories(
            'assets/cats/dress.png',
            'Dress',
          ),
          Categories(
            'assets/cats/accessories.png',
            'Accessories',
          ),
          Categories(
            'assets/cats/formal.png',
            'Formal',
          ),
          Categories(
            'assets/cats/informal.png',
            'InFormal',
          ),
          Categories(
            'assets/cats/jeans.png',
            'Jeans',
          ),
          Categories(
            'assets/cats/shoe.png',
            'Shoes',
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String imageLocation, imageCaption;

  Categories(this.imageLocation, this.imageCaption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
