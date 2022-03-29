import 'package:flutter/material.dart';
import 'views/openingscreen.dart';
import '/theme/routes.dart';
//my own import
import 'home.dart';
import 'widget.dart';
import 'root_app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Opening Screen',
    routes: AppRoutes.define(),
    home: OpeningView(),
    // home: RootApp(),
  ));
}
