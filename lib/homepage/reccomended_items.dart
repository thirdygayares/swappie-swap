import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../json/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReccomendedItems extends StatefulWidget {
  const ReccomendedItems({Key? key}) : super(key: key);

  @override
  State<ReccomendedItems> createState() => _ReccomendedItemsState();
}

class _ReccomendedItemsState extends State<ReccomendedItems> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          children: List.generate(reccomended.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 26,
            right: 26,
          ),
          child: Container(
            // color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(reccomended[index]['img'] as String),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 25,
                  ),
                  child: Container(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reccomended[index]['title'] as String,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: black,
                            height: 1.5,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.mapMarkerAlt,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                  Text(
                                    reccomended[index]['Location'] as String,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: grey,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.grey,
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    reccomended[index]['likes_count'] as String,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: grey,
                                      height: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      })),
    );
  } //contedt

} //class

