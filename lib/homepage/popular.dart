import 'package:flutter/material.dart';

class PopularWidget extends StatefulWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.red),
          );
        },
      ),
    );
  }
}
