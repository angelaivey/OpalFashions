import 'package:flutter/material.dart';
import 'package:azra_designs/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      'name':'Blazer Men',
      'picture':'images/products/blazer1.jpeg',
      'old_price': 'Ksh 1500',
      'price': 'Ksh 1300',
    },
    {
      'name':'Blazer Women',
      'picture':'images/products/blazer2.jpeg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name':'Red Dress',
      'picture':'images/products/dress1.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name':'Pants',
      'picture':'images/products/pants1.jpg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name':'Red Heels',
      'picture':'images/products/hills2.jpeg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name':'Shoes',
      'picture':'images/products/shoe1.jpg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name':'Black Dress',
      'picture':'images/products/dress2.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name':'Maroon Heels',
      'picture':'images/products/hills1.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name':'Grey Sweats',
      'picture':'images/products/pants2.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name':'Flowery Skirt',
      'picture':'images/products/skt1.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name':'Pink Skirt',
      'picture':'images/products/skt2.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleProd(
              productName: productList[index]['name'],
              productPicture: productList[index]['picture'],
              productOldPrice: productList[index]['old_price'],
              productPrice: productList[index]['price'],
            ),
          );
        },
    );
  }
}

class SingleProd extends StatelessWidget {
  SingleProd({this.productName, this.productPicture, this.productOldPrice, this.productPrice});

  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(
                  //passing the values of the clicked item(product) to product details page
                    builder: (context){
                    return ProductDetails(
                      productDetailName: productName,
                      productDetailPicture: productPicture,
                      productDetailOldPrice: productOldPrice,
                      productDetailNewPrice: productPrice,
                  );
                }));
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(productName,
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                    fontSize: 17.0),),
                        ),
                        Expanded(
                          child: Text(productPrice.toString(),
                            style: TextStyle(
                                color: Colors.pinkAccent, fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                        ),
//                        Expanded(
//                          child: Text(product_name),
//                        ),
//                        Expanded(
//                          child: Text(product_name),
//                        ),
                      ],
                    ),
                  ),
                  child: Image.asset(productPicture,
                          fit: BoxFit.cover),
              ),
            ),
          ),
      ),
    );
  }
}

