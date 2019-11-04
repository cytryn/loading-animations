import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../mixins/row_builder.dart';

class FillingSquareExample extends StatelessWidget with RowBuilder {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        buildRow(
          'Default LoadingFilling.square()',
          LoadingFilling.square(),
        ),
        buildRow(
          'Size Variant',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFilling.square(size: 30),
              LoadingFilling.square(size: 40),
              LoadingFilling.square(size: 50),
              LoadingFilling.square(size: 60),
              LoadingFilling.square(size: 70),
            ],
          ),
        ),
        buildRow(
          'Border Variant',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFilling.square(borderSize: 2),
              LoadingFilling.square(borderSize: 3),
              LoadingFilling.square(borderSize: 5),
              LoadingFilling.square(borderSize: 8),
              LoadingFilling.square(borderSize: 13),
            ],
          ),
        ),
        buildRow(
          'Color Variant',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFilling.square(
                borderColor: Colors.cyan,
                fillingColor: Colors.cyanAccent,
              ),
              LoadingFilling.square(
                borderColor: Colors.blue,
                fillingColor: Colors.blueAccent,
              ),
              LoadingFilling.square(
                borderColor: Colors.deepPurple,
                fillingColor: Colors.deepPurpleAccent,
              ),
              LoadingFilling.square(
                borderColor: Colors.pink,
                fillingColor: Colors.pinkAccent,
              ),
              LoadingFilling.square(
                borderColor: Colors.deepOrange,
                fillingColor: Colors.deepOrangeAccent,
              ),
            ],
          ),
        ),
        buildRow(
          'Speed Variant',
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFilling.square(
                borderColor: Colors.cyan,
                fillingColor: Colors.cyanAccent,
                duration: Duration(milliseconds: 3600),
              ),
              LoadingFilling.square(
                borderColor: Colors.blue,
                fillingColor: Colors.blueAccent,
                duration: Duration(milliseconds: 3300),
              ),
              LoadingFilling.square(
                borderColor: Colors.deepPurple,
                fillingColor: Colors.deepPurpleAccent,
                duration: Duration(milliseconds: 3000),
              ),
              LoadingFilling.square(
                borderColor: Colors.pink,
                fillingColor: Colors.pinkAccent,
                duration: Duration(milliseconds: 2700),
              ),
              LoadingFilling.square(
                borderColor: Colors.deepOrange,
                fillingColor: Colors.deepOrangeAccent,
                duration: Duration(milliseconds: 2400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
