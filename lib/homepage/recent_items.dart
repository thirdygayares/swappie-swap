import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../json/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecentItems extends StatefulWidget {
  const RecentItems({Key? key}) : super(key: key);

  @override
  State<RecentItems> createState() => _RecentItemsState();
}

class _RecentItemsState extends State<RecentItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(recent.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 6,
            right: 6,
          ),
          child: Container(
            // color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(recent[index]['img'] as String),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: Container(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recent[index]['title'] as String,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: black,
                            height: 1.5,
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
                                    recent[index]['Location'] as String,
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
                                    FontAwesomeIcons.facebookMessenger,
                                    color: Colors.grey,
                                    size: 14.0,
                                  ),
                                  Text(
                                    recent[index]['message_count'] as String,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: grey,
                                      height: 1.2,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.grey,
                                    size: 14.0,
                                  ),
                                  Text(
                                    recent[index]['likes_count'] as String,
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

