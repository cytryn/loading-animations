import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class BumpingLineCircleExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingBumpingLine.circle()',
          LoadingBumpingLine.circle(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(size: 30),
              LoadingBumpingLine.circle(size: 40),
              LoadingBumpingLine.circle(size: 50),
              LoadingBumpingLine.circle(size: 60),
              LoadingBumpingLine.circle(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 2,
              ),
              LoadingBumpingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 3,
              ),
              LoadingBumpingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 5,
              ),
              LoadingBumpingLine.circle(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 8,
              ),
              LoadingBumpingLine.circle(
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
              LoadingBumpingLine.circle(backgroundColor: Colors.cyan),
              LoadingBumpingLine.circle(backgroundColor: Colors.blue),
              LoadingBumpingLine.circle(backgroundColor: Colors.deepPurple),
              LoadingBumpingLine.circle(backgroundColor: Colors.pink),
              LoadingBumpingLine.circle(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 1400),
              ),
              LoadingBumpingLine.circle(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1100),
              ),
              LoadingBumpingLine.circle(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 800),
              ),
              LoadingBumpingLine.circle(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 500),
              ),
              LoadingBumpingLine.circle(
                backgroundColor: Colors.deepOrange,
                duration: Duration(milliseconds: 200),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
