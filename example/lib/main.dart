import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import 'package:example/tabs/bumping_line_circle_tab.dart';
import 'package:example/tabs/bumping_line_square_tab.dart';
import 'package:example/tabs/fading_line_circle_tab.dart';
import 'package:example/tabs/fading_line_square_tab.dart';
import 'package:example/tabs/jumping_line_circle_tab.dart';
import 'package:example/tabs/jumping_line_square_tab.dart';
import 'package:example/tabs/bouncing_line_circle_tab.dart';
import 'package:example/tabs/bouncing_line_square_tab.dart';
import 'package:example/tabs/bouncing_grid_circle_tab.dart';
import 'package:example/tabs/bouncing_grid_square_tab.dart';
import 'package:example/tabs/double_flipping_circle_tab.dart';
import 'package:example/tabs/double_flipping_square_tab.dart';
import 'package:example/tabs/filling_square_tab.dart';
import 'package:example/tabs/rotating_square_tab.dart';
import 'package:example/tabs/flipping_circle_tab.dart';
import 'package:example/tabs/flipping_square_tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Animations',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: DefaultTabController(
        length: 16,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  tabs: <Widget>[
                    Tab(
                      child: LoadingBumpingLine.circle(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingBumpingLine.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingFadingLine.circle(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingFadingLine.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingBouncingLine.circle(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingBouncingLine.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingJumpingLine.circle(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingJumpingLine.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingFlipping.circle(
                        size: 30,
                        borderColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingFlipping.square(
                        size: 30,
                        borderColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingRotating.square(
                        size: 30,
                        borderColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingFilling.square(
                        size: 30,
                        borderColor: Colors.white,
                        fillingColor: Colors.white70,
                      ),
                    ),
                    Tab(
                      child: LoadingDoubleFlipping.circle(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingDoubleFlipping.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingBouncingGrid.circle(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Tab(
                      child: LoadingBouncingGrid.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                BumpingLineCircleExample(),
                BumpingLineSquareExample(),
                FadingLineCircleExample(),
                FadingLineSquareExample(),
                BouncingLineCircleExample(),
                BouncingLineSquareExample(),
                JumpingLineCircleExample(),
                JumpingLineSqaureExample(),
                FlippingCircleExample(),
                FlippingSquareExample(),
                RotatingSquareExample(),
                FillingSquareExample(),
                DoubleFlippingCircleExample(),
                DoubleFlippingSquareExample(),
                BouncingGridCircleExample(),
                BouncingGridSquareExample(),
              ],
            )),
      ),
    );
  }
}
