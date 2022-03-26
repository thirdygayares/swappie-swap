import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own import
import '../components/horizontal_listview.dart';
import 'components/menu.dart';

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

    var scaffold = Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromARGB(255, 22, 1, 97),
        title: Text('Swappie'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: newDrawer(),
      ),
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
        ],
      ),
    );
    return scaffold;
  }
}
