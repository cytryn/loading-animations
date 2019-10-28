import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class BouncingLineSquareExample extends StatelessWidget with RowBuilder {
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
              LoadingBouncingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 2,
              ),
              LoadingBouncingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 3,
              ),
              LoadingBouncingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 5,
              ),
              LoadingBouncingLine.square(
                backgroundColor: Colors.transparent,
                borderColor: Colors.blueGrey,
                borderSize: 8,
              ),
              LoadingBouncingLine.square(
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
              LoadingBouncingLine.square(backgroundColor: Colors.cyan),
              LoadingBouncingLine.square(backgroundColor: Colors.blue),
              LoadingBouncingLine.square(backgroundColor: Colors.deepPurple),
              LoadingBouncingLine.square(backgroundColor: Colors.pink),
              LoadingBouncingLine.square(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 3600),
              ),
              LoadingBouncingLine.square(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 3300),
              ),
              LoadingBouncingLine.square(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 3000),
              ),
              LoadingBouncingLine.square(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 2700),
              ),
              LoadingBouncingLine.square(
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
