import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class FlippingCircleExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingFlipping.circle()',
          LoadingFlipping.circle(),
        ),
        buildRow(
          'Size Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(size: 30),
              LoadingFlipping.circle(size: 40),
              LoadingFlipping.circle(size: 50),
              LoadingFlipping.circle(size: 60),
              LoadingFlipping.circle(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(borderSize: 2),
              LoadingFlipping.circle(borderSize: 3),
              LoadingFlipping.circle(borderSize: 5),
              LoadingFlipping.circle(borderSize: 8),
              LoadingFlipping.circle(borderSize: 13),
            ],
          ),
        ),
        buildRow(
          'Color Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(borderColor: Colors.cyan),
              LoadingFlipping.circle(borderColor: Colors.blue),
              LoadingFlipping.circle(borderColor: Colors.deepPurple),
              LoadingFlipping.circle(borderColor: Colors.pink),
              LoadingFlipping.circle(borderColor: Colors.deepOrange),
            ],
          ),
        ),
        buildRow(
          'Speed Variation',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.cyan,
                duration: Duration(milliseconds: 2100),
              ),
              LoadingFlipping.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.blue,
                duration: Duration(milliseconds: 1800),
              ),
              LoadingFlipping.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.deepPurple,
                duration: Duration(milliseconds: 1500),
              ),
              LoadingFlipping.circle(
                borderColor: Colors.transparent,
                backgroundColor: Colors.pink,
                duration: Duration(milliseconds: 1200),
              ),
              LoadingFlipping.circle(
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
