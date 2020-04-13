import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart' show Colors, Icons;
import 'package:flutter/widgets.dart';
import 'package:spotify_mockup/homescreen/homescreen_layout.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  double scrollPosition = 0.0;
  double backgroundOpacityScrollSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NotificationListener<ScrollNotification>(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 13,
            letterSpacing: 0.2,
          ),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: AnimatedOpacity(
                  opacity: 1 -
                      min(scrollPosition, backgroundOpacityScrollSize) /
                          backgroundOpacityScrollSize,
                  duration: Duration(microseconds: 100),
                  child: Transform(
                    transform: Matrix4.diagonal3Values(1, .45, 1),
                    child: Container(
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: const Alignment(-1, -1), // near the top right
                          radius: 1,
                          colors: [
                            const Color(0XFF5D484D), // yellow sun
                            const Color(0xFF121212), // blue sky
                          ],
                        ),
                      ),
                      child: BackdropFilter(
                        filter:
                            new ImageFilter.blur(sigmaX: 10.0, sigmaY: 100.0),
                      ),
                    ),
                  ),
                ),
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverPersistentHeader(
                    delegate: HomeScreensliverHeader(),
                  ),
                  SliverToBoxAdapter(child: HomescreenColumn()),
                ],
              ),
            ],
          ),
        ),
        onNotification: (ScrollNotification scrollInfo) {
          print(scrollInfo.depth);
          if (scrollInfo.depth == 0) {
            setState(
              () {
                scrollPosition = scrollInfo.depth == 0
                    ? scrollInfo.metrics.pixels
                    : scrollPosition;
              },
            );
            return true;
          }
          return false;
        },
      ),
    );
  }
}

class HomeScreensliverHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 1 - min(shrinkOffset, maxExtent) / maxExtent,
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(right: 10, top: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  final double maxExtent = 40;

  @override
  final minExtent = 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform(
        transform: Matrix4.diagonal3Values(1, .45, 1),
        child: Container(
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(-1, -1), // near the top right
              radius: 1,
              colors: [
                const Color(0XFF5D484D), // yellow sun
                const Color(0xFF121212), // blue sky
              ],
            ),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 100.0),
          ),
        ),
      ),
    );
  }
}
