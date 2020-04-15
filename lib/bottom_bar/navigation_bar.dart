import 'package:flutter/material.dart' show Colors, Icons;
import 'package:flutter/widgets.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        height: 56,
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 9.6,
            fontWeight: FontWeight.w400,
            height: 1.2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home, color: Colors.white, size: 32),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search, color: Colors.grey[400], size: 32),
                    Text("Search")
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.library_music,
                        color: Colors.grey[400], size: 30),
                    Text("Your Library")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
