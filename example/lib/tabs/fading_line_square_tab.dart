import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class FadingLineSquareExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingFadingLine.square()',
          LoadingFadingLine.square(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(size: 30),
              LoadingFadingLine.square(size: 40),
              LoadingFadingLine.square(size: 50),
              LoadingFadingLine.square(size: 60),
              LoadingFadingLine.square(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 2,
              ),
              LoadingFadingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 3,
              ),
              LoadingFadingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 5,
              ),
              LoadingFadingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 8,
              ),
              LoadingFadingLine.square(
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
              LoadingFadingLine.square(backgroundColor: Colors.cyan),
              LoadingFadingLine.square(backgroundColor: Colors.blue),
              LoadingFadingLine.square(backgroundColor: Colors.deepPurple),
              LoadingFadingLine.square(backgroundColor: Colors.pink),
              LoadingFadingLine.square(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingFadingLine.square(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingFadingLine.square(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingFadingLine.square(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingFadingLine.square(
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
