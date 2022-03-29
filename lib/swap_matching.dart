import 'package:flutter/material.dart';
import 'package:swawppie/json/icons.dart';
import 'package:swawppie/json/swap_items.dart';
import 'theme/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class SwapMatching extends StatefulWidget {
  const SwapMatching({Key? key}) : super(key: key);

  @override
  State<SwapMatching> createState() => _SwapMatchingState();
}

class _SwapMatchingState extends State<SwapMatching> {
  List itemstemp = [];
  int itemlength = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      itemstemp = products;
      itemlength = products.length;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      bottomSheet: getFooter(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: TinderSwapCard(
        totalNum: itemlength,
        maxHeight: size.height * 0.75,
        maxWidth: size.width,
        minWidth: size.width * 0.75,
        minHeight: size.height * 0.6,
        cardBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: grey.withOpacity(0.3), blurRadius: 5, spreadRadius: 2),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(itemstemp[index]['img'] as String),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      black.withOpacity(0.25),
                      black.withOpacity(0),
                    ], end: Alignment.topCenter, begin: Alignment.bottomCenter),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: size.width * 0.72,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        itemstemp[index]['name'],
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: green,
                                            shape: BoxShape.circle),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        itemstemp[index]['Location'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: white,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  
                                   





                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      decoration: BoxDecoration(color: white),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(item_icons.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: item_icons[index]['size'],
                height: item_icons[index]['size'],
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 10)
                    ]),
                child: Center(
                  child: SvgPicture.asset(
                    item_icons[index]['icon'] as String,
                    width: item_icons[index]['icon_size'],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
