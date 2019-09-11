import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

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
        length: 4,
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
                          child: LoadingFlipping.circle(
                        size: 30,
                        borderColor: Colors.white,
                      )),
                      Tab(
                          child: LoadingRotating.square(
                        size: 30,
                        borderColor: Colors.white,
                      )),
                      Tab(
                          child: LoadingDoubleFlipping.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      )),
                      Tab(
                          child: LoadingBouncingGrid.square(
                        size: 30,
                        backgroundColor: Colors.white,
                      )),
                    ]),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                _buildFlipCircleTab(),
                _buildRotatingSquareTab(),
                _buildFlipBoxTab(),
                _buildBouncingGridTab(),
              ],
            )),
      ),
    );
  }

  Widget _buildFlipCircleTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default LoadingFlipCircle()',
          LoadingFlipping.circle(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Border Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Shape Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
      ],
    );
  }

  Widget _buildRotatingSquareTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default LoadingRotatingSquare()',
          LoadingRotating.square(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Border Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
      ],
    );
  }

  Widget _buildFlipBoxTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default LoadingFlippingSquare()',
          LoadingDoubleFlipping.square(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Border Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LoadingDoubleFlipping.square(backgroundColor: Colors.cyan),
                LoadingDoubleFlipping.square(backgroundColor: Colors.blue),
                LoadingDoubleFlipping.square(
                    backgroundColor: Colors.deepPurple),
                LoadingDoubleFlipping.square(backgroundColor: Colors.pink),
                LoadingDoubleFlipping.square(
                    backgroundColor: Colors.deepOrange),
              ],
            ),
          ),
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
      ],
    );
  }

  Widget _buildBouncingGridTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: <Widget>[
        _buildRow(
          'Default LoadingBouncingGrid.square()',
          LoadingBouncingGrid.square(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Color Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Shape Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Inverted Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
        _buildRow(
          'Speed Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
        ),
      ],
    );
  }

  Widget _buildRow(String title, Widget body) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Center(child: Text(title)),
        ),
        body,
        Divider(
          height: 30,
        ),
      ],
    );
  }
}
