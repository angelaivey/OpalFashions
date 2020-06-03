import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'T-shirts',
          ),
          Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'Dresses',
          ),
          Category(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'Formal Wear',
          ),
          Category(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'Informal Wear',
          ),
          Category(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'Jeans',
          ),
          Category(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'Shoes',
          ),
          Category(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 80.0,
        child: InkWell(
          onTap: (){},
          child: ListTile(
            title: Image.asset(imageLocation,
            width: 40.0,
            height: 30.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption,
              style: TextStyle(fontSize: 10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
