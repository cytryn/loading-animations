import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class RotatingSquareExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingRotating.square()',
          LoadingRotating.square(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(
                size: 30,
              ),
              LoadingRotating.square(
                size: 40,
              ),
              LoadingRotating.square(
                size: 50,
              ),
              LoadingRotating.square(
                size: 60,
              ),
              LoadingRotating.square(
                size: 70,
              ),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(
                borderSize: 2,
              ),
              LoadingRotating.square(
                borderSize: 3,
              ),
              LoadingRotating.square(
                borderSize: 5,
              ),
              LoadingRotating.square(
                borderSize: 8,
              ),
              LoadingRotating.square(
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
              LoadingRotating.square(borderColor: Colors.cyan),
              LoadingRotating.square(borderColor: Colors.blue),
              LoadingRotating.square(borderColor: Colors.deepPurple),
              LoadingRotating.square(borderColor: Colors.pink),
              LoadingRotating.square(borderColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingRotating.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingRotating.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingRotating.square(
                borderColor: Colors.transparent,
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingRotating.square(
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
