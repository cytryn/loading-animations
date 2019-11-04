import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class BouncingGridSquareExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingBouncingGrid.square()',
          LoadingBouncingGrid.square(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(size: 30),
              LoadingBouncingGrid.square(size: 40),
              LoadingBouncingGrid.square(size: 50),
              LoadingBouncingGrid.square(size: 60),
              LoadingBouncingGrid.square(size: 70),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(backgroundColor: Colors.cyan),
              LoadingBouncingGrid.square(backgroundColor: Colors.blue),
              LoadingBouncingGrid.square(backgroundColor: Colors.deepPurple),
              LoadingBouncingGrid.square(backgroundColor: Colors.pink),
              LoadingBouncingGrid.square(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(
                borderColor: Colors.cyan,
                backgroundColor: Colors.transparent,
                borderSize: 2,
              ),
              LoadingBouncingGrid.square(
                borderColor: Colors.blue,
                backgroundColor: Colors.transparent,
                borderSize: 3,
              ),
              LoadingBouncingGrid.square(
                borderColor: Colors.deepPurple,
                backgroundColor: Colors.transparent,
                borderSize: 5,
              ),
              LoadingBouncingGrid.square(
                borderColor: Colors.pink,
                backgroundColor: Colors.transparent,
                borderSize: 8,
              ),
              LoadingBouncingGrid.square(
                borderColor: Colors.deepOrange,
                backgroundColor: Colors.transparent,
                borderSize: 13,
              ),
            ],
          ),
        ),
        buildRow(
          'Inverted Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(
                  backgroundColor: Colors.cyan, inverted: true),
              LoadingBouncingGrid.square(
                  backgroundColor: Colors.blue, inverted: true),
              LoadingBouncingGrid.square(
                  backgroundColor: Colors.deepPurple, inverted: true),
              LoadingBouncingGrid.square(
                  backgroundColor: Colors.pink, inverted: true),
              LoadingBouncingGrid.square(
                  backgroundColor: Colors.deepOrange, inverted: true),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingBouncingGrid.square(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingBouncingGrid.square(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingBouncingGrid.square(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingBouncingGrid.square(
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
