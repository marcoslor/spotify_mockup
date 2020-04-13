import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayingBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlayingBarState();
  }
}

class _PlayingBarState extends State<PlayingBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Color(0xFF141414)),
        ),
      ),
      height: 64,
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.network(
                'https://i.scdn.co/image/ab67616d00001e0231760346883afec1e625c2ea',
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 12),
                    child: Row(
                      children: <Widget>[
                        Text("Me Desculpa Jay Z",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white)),
                        Text(" • ", style: TextStyle(color: Colors.grey[400])),
                        Text("Baco Exu do Blues",
                            style: TextStyle(color: Colors.grey[400]))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 6),
                child: Icon(Icons.favorite, color: Colors.white, size: 28),
              ),
              Container(
                padding: EdgeInsets.only(right: 12, left: 6),
                child: Icon(Icons.play_arrow, color: Colors.white, size: 32),
              ),
            ],
          ),
          Container(height: 1, color: Colors.grey[600]),
          Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.white),
        ],
      ),
    );
  }
}
