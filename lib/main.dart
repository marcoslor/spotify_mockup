import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_mockup/bottom_bar/bottom_bar.dart';
import 'package:spotify_mockup/homescreen/homescreen.dart';

void main() => runApp(Spotify());

class Spotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff121212),
      child: MediaQuery(
        data: MediaQueryData.fromWindow(ui.window),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: <Widget>[
              Expanded(
                child: HomeScreen(),
              ),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
