import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class DoubleFlippingSquareExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingFlipping.square()',
          LoadingDoubleFlipping.square(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(size: 30),
              LoadingDoubleFlipping.square(size: 40),
              LoadingDoubleFlipping.square(size: 50),
              LoadingDoubleFlipping.square(size: 60),
              LoadingDoubleFlipping.square(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(
                borderSize: 2,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.square(
                borderSize: 3,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.square(
                borderSize: 5,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.square(
                borderSize: 8,
                borderColor: Colors.blueGrey,
                backgroundColor: Colors.transparent,
              ),
              LoadingDoubleFlipping.square(
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
              LoadingDoubleFlipping.square(backgroundColor: Colors.cyan),
              LoadingDoubleFlipping.square(backgroundColor: Colors.blue),
              LoadingDoubleFlipping.square(backgroundColor: Colors.deepPurple),
              LoadingDoubleFlipping.square(backgroundColor: Colors.pink),
              LoadingDoubleFlipping.square(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingDoubleFlipping.square(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingDoubleFlipping.square(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingDoubleFlipping.square(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingDoubleFlipping.square(
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
