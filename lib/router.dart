import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_mockup/home_screen/home_screen.dart';
import 'package:spotify_mockup/player_screen/player_screen.dart';

const String homeRoute = '/';
const String playerRoute = '/player';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case playerRoute:
        return MaterialPageRoute(builder: (_) => PlayerScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
