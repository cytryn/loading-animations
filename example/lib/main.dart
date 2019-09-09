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
                          child: LoadingFlipCircle(
                        size: 30,
                        borderColor: Colors.white,
                      )),
                      Tab(
                          child: LoadingRotatingSquare(
                        size: 30,
                        borderColor: Colors.white,
                      )),
                      Tab(
                          child: LoadingFlipBox(
                        size: 30,
                        backgroundColor: Colors.white,
                      )),
                      Tab(
                          child: LoadingBouncingGrid(
                        size: 30,
                        color: Colors.white,
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
          LoadingFlipCircle(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LoadingFlipCircle(size: 30),
                LoadingFlipCircle(size: 40),
                LoadingFlipCircle(size: 50),
                LoadingFlipCircle(size: 60),
                LoadingFlipCircle(size: 70),
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
                LoadingFlipCircle(borderSize: 2),
                LoadingFlipCircle(borderSize: 3),
                LoadingFlipCircle(borderSize: 5),
                LoadingFlipCircle(borderSize: 8),
                LoadingFlipCircle(borderSize: 13),
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
                LoadingFlipCircle(borderColor: Colors.cyan),
                LoadingFlipCircle(borderColor: Colors.blue),
                LoadingFlipCircle(borderColor: Colors.deepPurple),
                LoadingFlipCircle(borderColor: Colors.pink),
                LoadingFlipCircle(borderColor: Colors.deepOrange),
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
                LoadingFlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                LoadingFlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                LoadingFlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                LoadingFlipCircle(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                LoadingFlipCircle(
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
          LoadingRotatingSquare(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LoadingRotatingSquare(
                  size: 30,
                ),
                LoadingRotatingSquare(
                  size: 40,
                ),
                LoadingRotatingSquare(
                  size: 50,
                ),
                LoadingRotatingSquare(
                  size: 60,
                ),
                LoadingRotatingSquare(
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
                LoadingRotatingSquare(
                  borderSize: 2,
                ),
                LoadingRotatingSquare(
                  borderSize: 3,
                ),
                LoadingRotatingSquare(
                  borderSize: 5,
                ),
                LoadingRotatingSquare(
                  borderSize: 8,
                ),
                LoadingRotatingSquare(
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
                LoadingRotatingSquare(borderColor: Colors.cyan),
                LoadingRotatingSquare(borderColor: Colors.blue),
                LoadingRotatingSquare(borderColor: Colors.deepPurple),
                LoadingRotatingSquare(borderColor: Colors.pink),
                LoadingRotatingSquare(borderColor: Colors.deepOrange),
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
                LoadingRotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                LoadingRotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                LoadingRotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                LoadingRotatingSquare(
                  borderColor: Colors.transparent,
                  backgroundColor: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                LoadingRotatingSquare(
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
          'Default LoadingFlipBox()',
          LoadingFlipBox(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LoadingFlipBox(size: 30),
                LoadingFlipBox(size: 40),
                LoadingFlipBox(size: 50),
                LoadingFlipBox(size: 60),
                LoadingFlipBox(size: 70),
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
                LoadingFlipBox(
                  borderSize: 2,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                LoadingFlipBox(
                  borderSize: 3,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                LoadingFlipBox(
                  borderSize: 5,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                LoadingFlipBox(
                  borderSize: 8,
                  borderColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
                LoadingFlipBox(
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
                LoadingFlipBox(backgroundColor: Colors.cyan),
                LoadingFlipBox(backgroundColor: Colors.blue),
                LoadingFlipBox(backgroundColor: Colors.deepPurple),
                LoadingFlipBox(backgroundColor: Colors.pink),
                LoadingFlipBox(backgroundColor: Colors.deepOrange),
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
                LoadingFlipBox(
                  backgroundColor: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                LoadingFlipBox(
                  backgroundColor: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                LoadingFlipBox(
                  backgroundColor: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                LoadingFlipBox(
                  backgroundColor: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                LoadingFlipBox(
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
          'Default LoadingBouncingGrid()',
          LoadingBouncingGrid(),
        ),
        _buildRow(
          'Size Variation',
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LoadingBouncingGrid(size: 30),
                LoadingBouncingGrid(size: 40),
                LoadingBouncingGrid(size: 50),
                LoadingBouncingGrid(size: 60),
                LoadingBouncingGrid(size: 70),
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
                LoadingBouncingGrid(color: Colors.cyan),
                LoadingBouncingGrid(color: Colors.blue),
                LoadingBouncingGrid(color: Colors.deepPurple),
                LoadingBouncingGrid(color: Colors.pink),
                LoadingBouncingGrid(color: Colors.deepOrange),
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
                LoadingBouncingGrid(color: Colors.cyan, shape: BoxShape.circle),
                LoadingBouncingGrid(color: Colors.blue, shape: BoxShape.circle),
                LoadingBouncingGrid(
                    color: Colors.deepPurple, shape: BoxShape.circle),
                LoadingBouncingGrid(color: Colors.pink, shape: BoxShape.circle),
                LoadingBouncingGrid(
                    color: Colors.deepOrange, shape: BoxShape.circle),
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
                LoadingBouncingGrid(color: Colors.cyan, inverted: true),
                LoadingBouncingGrid(color: Colors.blue, inverted: true),
                LoadingBouncingGrid(color: Colors.deepPurple, inverted: true),
                LoadingBouncingGrid(color: Colors.pink, inverted: true),
                LoadingBouncingGrid(color: Colors.deepOrange, inverted: true),
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
                LoadingBouncingGrid(
                  color: Colors.cyan,
                  duration: Duration(milliseconds: 2100),
                ),
                LoadingBouncingGrid(
                  color: Colors.blue,
                  duration: Duration(milliseconds: 1800),
                ),
                LoadingBouncingGrid(
                  color: Colors.deepPurple,
                  duration: Duration(milliseconds: 1500),
                ),
                LoadingBouncingGrid(
                  color: Colors.pink,
                  duration: Duration(milliseconds: 1200),
                ),
                LoadingBouncingGrid(
                  color: Colors.deepOrange,
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
