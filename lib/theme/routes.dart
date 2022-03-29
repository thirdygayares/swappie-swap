import 'package:flutter/material.dart';
import 'package:swawppie/root_app.dart';
// import 'package:openingswappie/views/homemenu.dart';
import '../views/log-inscreen.dart';
import '../views/register.dart';

class AppRoutes {
  AppRoutes._();

  static const String authlogin = '/auth-login';
  static const String authregister = '/auth-register';
  static const String homemenu = '/homemenu';
  static const String rootapp = '/rootapp';

  static Map<String, WidgetBuilder> define() {
    return {
      authlogin: (context) => const Login(),
      authregister: (context) => const Register(),
      rootapp: (context) => RootApp(),
      // homemenu: (context) => MenuScreen(),
    };
  }
}
