import 'dart:ui';

import 'package:flutter/material.dart' show Colors, Icons;
import 'package:flutter/widgets.dart';
import 'package:palette_generator/palette_generator.dart';

typedef ColorCallBack = void Function(Color color);

const String albumImage =
    'https://i.scdn.co/image/ab67616d00001e0231760346883afec1e625c2ea';

class PickImgMainColor {
  static Future<void> pick(image, ColorCallBack callBack) async {
    var paletteGenerator = await PaletteGenerator.fromImageProvider(image);
    if (paletteGenerator != null && paletteGenerator.colors.isNotEmpty) {
      callBack(paletteGenerator.colors.toList()[0]);
    } else {
      callBack(null);
    }
  }
}

class PlayerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlayerScreenState();
  }
}

class _PlayerScreenState extends State<PlayerScreen> {
  var image = NetworkImage(albumImage);
  BoxDecoration background = BoxDecoration(color: Color(0XFF121212));

  @override
  initState() {
    super.initState();

    Future(() {
      PickImgMainColor.pick(
        image,
        (color) {
          setState(() {
            background = BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[color, Color(0XFF121212)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            );
          });
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: 13,
        letterSpacing: 0.2,
      ),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: background,
              child: BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30).copyWith(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.expand_more,
                        color: Colors.white,
                        size: 32,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 32,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.network(albumImage),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 36).copyWith(bottom: 56),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Me desculpa Jay Z",
                                    style: const TextStyle(fontSize: 22),
                                  ),
                                  margin: const EdgeInsets.only(bottom: 10),
                                ),
                                Container(
                                  child: Text(
                                    "Baco Exu do Blues",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 28,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 16,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              child: Container(
                                height: 3,
                                color: Colors.grey[800],
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: 0.236,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    child: Container(
                                      height: 3,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text("0:50"), Text("3:32")],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.shuffle,
                            color: Colors.white,
                            size: 24,
                          ),
                          Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 52,
                          ),
                          Icon(
                            Icons.play_circle_filled,
                            color: Colors.white,
                            size: 80,
                          ),
                          Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 52,
                          ),
                          Icon(
                            Icons.repeat,
                            color: Colors.white,
                            size: 24,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.speaker_group,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.queue_music,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
