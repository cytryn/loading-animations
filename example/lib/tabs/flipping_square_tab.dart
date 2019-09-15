import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class FlippingSquareExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingFlipping.square()',
          LoadingFlipping.square(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(size: 30),
              LoadingFlipping.square(size: 40),
              LoadingFlipping.square(size: 50),
              LoadingFlipping.square(size: 60),
              LoadingFlipping.square(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(borderSize: 2),
              LoadingFlipping.square(borderSize: 3),
              LoadingFlipping.square(borderSize: 5),
              LoadingFlipping.square(borderSize: 8),
              LoadingFlipping.square(borderSize: 13),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(borderColor: Colors.cyan),
              LoadingFlipping.square(borderColor: Colors.blue),
              LoadingFlipping.square(borderColor: Colors.deepPurple),
              LoadingFlipping.square(borderColor: Colors.pink),
              LoadingFlipping.square(borderColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingFlipping.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingFlipping.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingFlipping.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingFlipping.square(
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
