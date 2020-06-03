import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsInCart = [
    {
      'name':'Blazer Women',
      'picture':'images/products/blazer2.jpeg',
      'price': 'Ksh 1000',
      'size': 'M',
      'color': ' white',
      'quantity': 200,
    },
    {
      'name':'Red Dress',
      'picture':'images/products/dress1.jpeg',
      'price': 'Ksh 800',
      'size': '8',
      'color': 'turqoise',
      'quantity': 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsInCart.length,
        itemBuilder: (context, index){
          return SingleCartProduct(
            productName: productsInCart[index]['name'],
            productColor: productsInCart[index]['color'],
            productSize: productsInCart[index]['size'],
            productQuantity: productsInCart[index]['quantity'],
            productPrice: productsInCart[index]['price'],
            productPicture: productsInCart[index]['picture'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {

  SingleCartProduct({this.productName, this.productPicture, this.productSize, this.productPrice, this.productColor, this.productQuantity});

  final productName;
  final productPicture;
  final productPrice;
  final productSize;
  final productColor;
  final productQuantity;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //******image section*****
        leading: Image.asset(productPicture),

        //*****product name section******
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(productName),
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[

                // ******size products******
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('Size: ', style: TextStyle(color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(productSize, style: TextStyle(color: Colors.pinkAccent),),
                ),

                // *****product color section*****
                Padding(padding: const EdgeInsets.all(4.0),
                  child: Text('Color: ', style: TextStyle(color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(productColor, style: TextStyle(color: Colors.pinkAccent),),
                ),

                Padding(padding: const EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),
                  child: Text('Quantity: ', style: TextStyle(color: Colors.black),),
                ),

                IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
                Text('$productQuantity'),
                IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
              ],
            ),

            // ****** product price section*****
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(productPrice, style: TextStyle(fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

