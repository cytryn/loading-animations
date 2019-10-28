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
              LoadingBouncingLine.circle(borderSize: 2),
              LoadingBouncingLine.circle(borderSize: 3),
              LoadingBouncingLine.circle(borderSize: 5),
              LoadingBouncingLine.circle(borderSize: 8),
              LoadingBouncingLine.circle(borderSize: 13),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(borderColor: Colors.cyan),
              LoadingBouncingLine.circle(borderColor: Colors.blue),
              LoadingBouncingLine.circle(borderColor: Colors.deepPurple),
              LoadingBouncingLine.circle(borderColor: Colors.pink),
              LoadingBouncingLine.circle(borderColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingBouncingLine.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingBouncingLine.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingBouncingLine.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingBouncingLine.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.deepOrange,
                duration: Duration(milliseconds: 900),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
