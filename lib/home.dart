import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own import
import '../components/horizontal_listview.dart';
import 'components/menu.dart';
import 'homepage/popular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 100.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/banner/b1.png'),
          AssetImage('images/banner/b2.png'),
          AssetImage('images/banner/b3.png'),
          AssetImage('images/banner/b4.png'),
          AssetImage('images/banner/b5.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotColor: Color.fromARGB(255, 22, 1, 97),
        dotBgColor: Color.fromARGB(150, 255, 255, 255),
        indicatorBgPadding: 4.0,
      ),
    );

  
      body: ListView(
        children: <Widget>[
          //image carousel begin here
          image_carousel,
          //categories Text
          //paddling widget
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 25.0,
              color: Color.fromARGB(255, 22, 1, 97),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'CATEGORY',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),

          //Horizontal list view begins here
          HorizontalList(),

          SizedBox(height: 8.0),

//popular Item
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 5, 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Color.fromARGB(255, 22, 1, 97),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      'Popular Items',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Text(
                        'See More>',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 320.0,
            child: PopularWidget(),
          ),
        ],
      ),
    );
    return scaffold;
  }
}

class TitleTemplates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'popoular',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
          ],
        ),
      ),
    );
  }
}
