import 'package:flutter/material.dart';
import 'package:swawppie/home.dart';
import 'package:swawppie/swap_matching.dart';
import 'theme/colors.dart';
import 'json/data.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  AppBar? appbar = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        SwapMatching(),
        Center(
          child: Text(
            "swapmatching",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "upload",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Messages",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Account",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  getAppBar() {
    switch (activeTab) {
      case 0:
        appbar = null;
        // return AppBar(
        //   elevation: 0.1,
        //   backgroundColor: Color.fromARGB(255, 22, 1, 97),
        //   actions: <Widget>[
        //     Padding(
        //       padding: const EdgeInsets.all(20.0),
        //       child: Row(
        //         children: [
        //           Flexible(
        //               child: Container(
        //             height: 45,
        //             decoration: BoxDecoration(color: grey.withOpacity(0.2)),
        //           ))
        //         ],
        //       ),
        //     ),
        //     IconButton(
        //         icon: Icon(
        //           Icons.search,
        //           color: Colors.white,
        //         ),
        //         onPressed: () {}),
        //     IconButton(
        //         icon: Icon(
        //           Icons.notifications,
        //           color: Colors.white,
        //         ),
        //         onPressed: () {}),
        //   ],
        // );
        break;
      case 1:
        appbar = null;
        break;
      case 2:
        appbar = null;
        break;
      case 3:
        appbar = null;
        break;
      case 4:
        return AppBar(
            elevation: 0.8,
            backgroundColor: white,
            title: Text("Account",
                style: TextStyle(
                  color: black,
                )));
        break;
      default:
    }
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: white,
        border: Border(top: BorderSide(color: grey.withOpacity(0.2))),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: activeTab == index ? accent : blue,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            })),
      ),
    );
  }
}
