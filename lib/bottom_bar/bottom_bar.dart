import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'navigation_bar.dart';
import 'playing_bar.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF282828),
      child: IntrinsicHeight(
        child: Column(
          children: <Widget>[
            PlayingBar(),
            NavigationBar(),
          ],
        ),
      ),
    );
  }
}
