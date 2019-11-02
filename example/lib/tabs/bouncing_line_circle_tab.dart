import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class BouncingLineCircleExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingBouncingLine.circle()',
          LoadingBouncingLine.circle(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(size: 30),
              LoadingBouncingLine.circle(size: 40),
              LoadingBouncingLine.circle(size: 50),
              LoadingBouncingLine.circle(size: 60),
              LoadingBouncingLine.circle(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 2,
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 3,
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 5,
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 8,
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 13,
              ),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(backgroundColor: Colors.cyan),
              LoadingBouncingLine.circle(backgroundColor: Colors.blue),
              LoadingBouncingLine.circle(backgroundColor: Colors.deepPurple),
              LoadingBouncingLine.circle(backgroundColor: Colors.pink),
              LoadingBouncingLine.circle(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 3600),
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 3300),
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 3000),
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 2700),
              ),
              LoadingBouncingLine.circle(
                backgroundColor: Colors.deepOrange,
                duration: Duration(milliseconds: 2400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
