import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'theme/colors.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
      child: Row(
        children: [
          Flexible(
              child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      cursorColor: primary,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Feather.search,
                            size: 20,
                          ),
                          hintText: "Search &  Swap"),
                    ),
                  ))),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 22, 1, 97), shape: BoxShape.circle),
            child: Center(
                child: Icon(
              Icons.notifications,
              color: white,
              size: 20,
            )),
          ),
        ],
      ),
    );
  }
}
