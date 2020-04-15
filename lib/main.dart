import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_mockup/router.dart';

void main() => runApp(SpotifyMockup());

class SpotifyMockup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 13,
          letterSpacing: 0.2,
        ),
        child: WidgetsApp(
          title: 'Spotify mockup made with flutter.',
          initialRoute: homeRoute,
          onGenerateRoute: Router.generateRoute,
          color: Colors.black,
        ));
  }
}
