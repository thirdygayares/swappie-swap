import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PopularWidget extends StatefulWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  var productlist = [
    {
      "name": "plastic shoe Box",
      "picture": "images/products/shoes.jpg",
      "location": "Pangasinan",
      "message": "48",
      "likes": "42",
    },
    {
      "name": "visvim x mastermind",
      "picture": "images/products/iphone.jpg",
      "location": "Makati",
      "message": "56",
      "likes": "42",
    },
    {
      "name": "Pet Cage",
      "picture": "images/products/shoes.jpg",
      "location": "Pangasinan",
      "message": "48",
      "likes": "42",
    },
    {
      "name": "History Books",
      "picture": "images/products/shoes.jpg",
      "location": "Pangasinan",
      "message": "48",
      "likes": "42",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GridView.builder(
              itemCount: productlist.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return SingleProduct(
                  product_name: productlist[index]['name'],
                  image: productlist[index]['picture'],
                  location: productlist[index]['location'],
                  message: productlist[index]['message'],
                  likes: productlist[index]['likes'],
                );
              }),
        ),
      ],
    );
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final image;
  final location;
  final message;
  final likes;

  SingleProduct({
    this.product_name,
    this.image,
    this.location,
    this.message,
    this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
