import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../json/data.dart';

class PopularItems extends StatefulWidget {
  const PopularItems({Key? key}) : super(key: key);

  @override
  State<PopularItems> createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(popular.length, (index) {
        return Column(
         children: [
           Container(
              width: 140,
              height: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(popular[index]['img'] as String),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 140,
                    child: Column(
                      children: [
                        Text(
                          popular[index]['title'] as String,
                          style: TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: black,
                          
                      
   
          }
  }

