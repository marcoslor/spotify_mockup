import 'dart:ui';

import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';

class HomescreenColumn extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 36),
      child: Column(
        children: <Widget>[
          Shortcuts(),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 14, bottom: 18),
                  child: Text(
                    "Recently played",
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      return new Row(
                        children: <Widget>[
                          Container(
                            width: 122,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 6),
                                  height: 122,
                                  width: 122,
                                  child: ClipOval(
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.network(
                                        'https://i.scdn.co/image/452e988032d7a9461342580a4f54433a94fe7a9d',
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "BaianaSystem",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 122,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 6),
                                  height: 122,
                                  width: 122,
                                  child: FittedBox(
                                    fit: BoxFit.cover,
                                    child: Image.network(
                                      'https://i.scdn.co/image/ab67616d00001e02f05e5ac32fdd79d100315a20',
                                    ),
                                  ),
                                ),
                                Text(
                                  "The Dark Side of the Moon",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 14, bottom: 18),
                  child: Text(
                    "Your top podcasts",
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  height: 188,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      return new Row(
                        children: <Widget>[
                          Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 6),
                                  height: 150,
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.network(
                                        'https://i.scdn.co/image/c3cad82fa10b155479e45159374b3ed17d9fae35',
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Respondendo em Voz Alta",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 6),
                                  height: 150,
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.network(
                                        'https://i.scdn.co/image/394382cb232444c3d283f6bf214c18575009a72c',
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "A Rerra é redonda",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
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

class Shortcuts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Good Evening",
            style: const TextStyle(fontSize: 24),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: GridView.builder(
              primary: false,
              physics: new NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3.2),
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  child: Container(
                    color: Colors.grey[800].withOpacity(.5),
                    child: Row(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.network(
                              'https://i.scdn.co/image/452e988032d7a9461342580a4f54433a94fe7a9d',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: const Text(
                            'BaianaSystem',
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
