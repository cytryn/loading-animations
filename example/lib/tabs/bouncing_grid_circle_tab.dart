import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class BouncingGridCircleExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingBouncingGrid.circle()',
          LoadingBouncingGrid.circle(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(size: 30),
              LoadingBouncingGrid.circle(size: 40),
              LoadingBouncingGrid.circle(size: 50),
              LoadingBouncingGrid.circle(size: 60),
              LoadingBouncingGrid.circle(size: 70),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(backgroundColor: Colors.cyan),
              LoadingBouncingGrid.circle(backgroundColor: Colors.blue),
              LoadingBouncingGrid.circle(backgroundColor: Colors.deepPurple),
              LoadingBouncingGrid.circle(backgroundColor: Colors.pink),
              LoadingBouncingGrid.circle(backgroundColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(
                borderColor: Colors.cyan,
                backgroundColor: Colors.transparent,
                borderSize: 2,
              ),
              LoadingBouncingGrid.circle(
                borderColor: Colors.blue,
                backgroundColor: Colors.transparent,
                borderSize: 3,
              ),
              LoadingBouncingGrid.circle(
                borderColor: Colors.deepPurple,
                backgroundColor: Colors.transparent,
                borderSize: 5,
              ),
              LoadingBouncingGrid.circle(
                borderColor: Colors.pink,
                backgroundColor: Colors.transparent,
                borderSize: 8,
              ),
              LoadingBouncingGrid.circle(
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
              LoadingBouncingGrid.circle(
                  backgroundColor: Colors.cyan, inverted: true),
              LoadingBouncingGrid.circle(
                  backgroundColor: Colors.blue, inverted: true),
              LoadingBouncingGrid.circle(
                  backgroundColor: Colors.deepPurple, inverted: true),
              LoadingBouncingGrid.circle(
                  backgroundColor: Colors.pink, inverted: true),
              LoadingBouncingGrid.circle(
                  backgroundColor: Colors.deepOrange, inverted: true),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingBouncingGrid.circle(
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingBouncingGrid.circle(
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingBouncingGrid.circle(
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingBouncingGrid.circle(
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
