import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayyoralar/pages/home.dart';
import 'package:sayyoralar/pages/splash.dart';

abstract class AppRoute {
  static Route<dynamic> router(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case "/product":
        return CupertinoPageRoute(
          builder: (_) => const MyHomePage(),
        );

      default:
        return CupertinoPageRoute(builder: (_) => const Scaffold());
    }
  }
}
