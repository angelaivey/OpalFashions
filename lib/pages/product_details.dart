import 'package:azra_designs/main.dart';
import 'package:azra_designs/pages/cart.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({this.productDetailName, this.productDetailPicture,
    this.productDetailOldPrice, this.productDetailNewPrice});

  final productDetailName;
  final productDetailPicture;
  final productDetailNewPrice;
  final productDetailOldPrice;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 0.1,
        backgroundColor: Colors.pink,
        title: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return HomePage();
            }));
          },
            child: Text('Opal Fashion')),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: (){}
          ),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Cart();
                }));
              }
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.productDetailPicture),
                ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.productDetailName,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(widget.productDetailOldPrice.toString(),
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                        ),
                      ),
                      Expanded(
                        child: Text(widget.productDetailNewPrice.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent,
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //first buttons
          Row(
            children: <Widget>[
              //different buttons
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    // ******* alert dialogue******
                    return AlertDialog(
                      title: Text('Size'),
                      content: Text('Choose the size',),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.pop(context);
                        },
                          child: Text('Close',),
                        ),
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        // ******* alert dialogue******
                        return AlertDialog(
                          title: Text('Color'),
                          content: Text('Choose the color',),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.pop(context);
                            },
                              child: Text('Close',),
                            ),
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        // ******* alert dialogue******
                        return AlertDialog(
                          title: Text('Quantity'),
                          content: Text('Choose the number',),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.pop(context);
                            },
                              child: Text('Close',),
                            ),
                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Quantity'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.pinkAccent,
                    textColor: Colors.white,
                    child: Text('Buy Now'),
                  ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.pinkAccent,),
                  onPressed: (){},
              ),
              IconButton(icon: Icon(Icons.favorite_border, color: Colors.pinkAccent,),
                onPressed: (){},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Product Name: ',
              style: TextStyle(color: Colors.grey),
              ),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.productDetailName),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product Brand: ',
                  style: TextStyle(color: Colors.grey),
                ),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text('Brand X'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product Condition: ',
                  style: TextStyle(color: Colors.grey),
                ),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text('NEW'),
              ),
            ],
          ),
          //*****SIMILAR PRODUCTS SECTION****
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Similar Products'),
          ),
          Container(
            height: 400,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productList = [
    {
      'name': 'Blazer Men',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 'Ksh 1500',
      'price': 'Ksh 1300',
    },
    {
      'name': 'Blazer Women',
      'picture': 'images/products/blazer2.jpeg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name': 'Pants',
      'picture': 'images/products/pants1.jpg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name': 'Red Heels',
      'picture': 'images/products/hills2.jpeg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name': 'Shoes',
      'picture': 'images/products/shoe1.jpg',
      'old_price': 'Ksh 1200',
      'price': 'Ksh 1000',
    },
    {
      'name': 'Black Dress',
      'picture': 'images/products/dress2.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name': 'Maroon Heels',
      'picture': 'images/products/hills1.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name': 'Grey Sweats',
      'picture': 'images/products/pants2.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name': 'Flowery Skirt',
      'picture': 'images/products/skt1.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
    {
      'name': 'Pink Skirt',
      'picture': 'images/products/skt2.jpeg',
      'old_price': 'Ksh 1000',
      'price': 'Ksh 800',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SimilarSingleProd(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          productOldPrice: productList[index]['old_price'],
          productPrice: productList[index]['price'],
        );
      },
    );
  }
}
class SimilarSingleProd extends StatelessWidget {
  SimilarSingleProd(
      {this.productName, this.productPicture, this.productOldPrice, this.productPrice});

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
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                //passing the values of the clicked item(product) to product details page
                  builder: (context) {
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
                            color: Colors.pinkAccent, fontWeight: FontWeight
                            .bold, fontSize: 17.0),
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
