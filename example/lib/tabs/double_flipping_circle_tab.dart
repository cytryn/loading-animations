import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class DoubleFlippingCircleExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingDoubleFlipping.circle()',
          LoadingDoubleFlipping.circle(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(size: 30),
              LoadingDoubleFlipping.circle(size: 40),
              LoadingDoubleFlipping.circle(size: 50),
              LoadingDoubleFlipping.circle(size: 60),
              LoadingDoubleFlipping.circle(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(
                borderSize: 2,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.circle(
                borderSize: 3,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.circle(
                borderSize: 5,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.circle(
                borderSize: 8,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.circle(
                borderSize: 13,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(backgroundColor: Colors.cyan),
              LoadingDoubleFlipping.circle(backgroundColor: Colors.blue),
              LoadingDoubleFlipping.circle(backgroundColor: Colors.deepPurple),
              LoadingDoubleFlipping.circle(backgroundColor: Colors.pink),
              LoadingDoubleFlipping.circle(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingDoubleFlipping.circle(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingDoubleFlipping.circle(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingDoubleFlipping.circle(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingDoubleFlipping.circle(
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
