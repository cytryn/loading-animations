import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class BouncingLineSqaureExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingBouncingLine.square()',
          LoadingBouncingLine.square(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(size: 30),
              LoadingBouncingLine.square(size: 40),
              LoadingBouncingLine.square(size: 50),
              LoadingBouncingLine.square(size: 60),
              LoadingBouncingLine.square(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(borderSize: 2),
              LoadingBouncingLine.square(borderSize: 3),
              LoadingBouncingLine.square(borderSize: 5),
              LoadingBouncingLine.square(borderSize: 8),
              LoadingBouncingLine.square(borderSize: 13),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(borderColor: Colors.cyan),
              LoadingBouncingLine.square(borderColor: Colors.blue),
              LoadingBouncingLine.square(borderColor: Colors.deepPurple),
              LoadingBouncingLine.square(borderColor: Colors.pink),
              LoadingBouncingLine.square(borderColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingBouncingLine.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingBouncingLine.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingBouncingLine.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingBouncingLine.square(
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
