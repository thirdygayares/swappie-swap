import 'package:flutter/material.dart';
import 'theme/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class SwapMatching extends StatefulWidget {
  const SwapMatching({Key? key}) : super(key: key);

  @override
  State<SwapMatching> createState() => _SwapMatchingState();
}

class _SwapMatchingState extends State<SwapMatching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomSheet: getFooter(),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 120,
      decoration: BoxDecoration(color: white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
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
                child: SvgPicture.asset("images/close_icon.svg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
