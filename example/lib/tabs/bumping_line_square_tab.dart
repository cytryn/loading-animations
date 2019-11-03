import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class BumpingLineSquareExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingBumpingLine.square()',
          LoadingBumpingLine.square(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(size: 30),
              LoadingBumpingLine.square(size: 40),
              LoadingBumpingLine.square(size: 50),
              LoadingBumpingLine.square(size: 60),
              LoadingBumpingLine.square(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 2,
              ),
              LoadingBumpingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 3,
              ),
              LoadingBumpingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 5,
              ),
              LoadingBumpingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 8,
              ),
              LoadingBumpingLine.square(
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
              LoadingBumpingLine.square(backgroundColor: Colors.cyan),
              LoadingBumpingLine.square(backgroundColor: Colors.blue),
              LoadingBumpingLine.square(backgroundColor: Colors.deepPurple),
              LoadingBumpingLine.square(backgroundColor: Colors.pink),
              LoadingBumpingLine.square(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 1400),
              ),
              LoadingBumpingLine.square(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1100),
              ),
              LoadingBumpingLine.square(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 800),
              ),
              LoadingBumpingLine.square(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 500),
              ),
              LoadingBumpingLine.square(
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
