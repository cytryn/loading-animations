import 'package:flutter/material.dart';

class LoadingBouncingGrid extends StatefulWidget {
  final AnimationController controller;
  final Color color;
  final BoxShape shape;
  final double size;
  final bool inverted;
  final IndexedWidgetBuilder itemBuilder;
  final Duration duration;

  LoadingBouncingGrid({
    Key key,
    this.controller,
    this.color = Colors.blueGrey,
    this.size = 50.0,
    this.shape = BoxShape.rectangle,
    this.inverted = false,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1500),
  })  : assert(
            !(itemBuilder is IndexedWidgetBuilder && color is Color) &&
                !(itemBuilder == null && color == null),
            'You should specify either a itemBuilder or a color'),
        assert(shape != null,
            'loading_animations: property [shape] must not be null'),
        assert(size != null,
            'loading_animations: property [size] must not be null'),
        assert(duration != null,
            'loading_animations: property [duration] must not be null'),
        super(key: key);

  @override
  _LoadingBouncingGridState createState() => _LoadingBouncingGridState();
}

class _LoadingBouncingGridState extends State<LoadingBouncingGrid>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation1,
      _animation2,
      _animation3,
      _animation4,
      _animation5;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ??
        AnimationController(vsync: this, duration: widget.duration);

    _animation1 = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.6, curve: Curves.easeIn),
      ),
    );

    _animation2 = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.1, 0.7, curve: Curves.easeIn),
      ),
    );

    _animation3 = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 0.8, curve: Curves.easeIn),
      ),
    );

    _animation4 = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.9, curve: Curves.easeIn),
      ),
    );

    _animation5 = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller
      ..addListener(() => setState(() {}))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
        if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.square(widget.size),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildSquare(_animation3, 0),
              _buildSquare(_animation4, 1),
              _buildSquare(_animation5, 2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildSquare(_animation2, 3),
              _buildSquare(_animation3, 4),
              _buildSquare(_animation4, 5),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildSquare(_animation1, 6),
              _buildSquare(_animation2, 7),
              _buildSquare(_animation3, 8),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSquare(Animation<double> animation, int index) {
    int invertedOffset = widget.inverted ? 1 : 0;
    return Transform.scale(
      scale: invertedOffset - animation.value.abs(),
      child: _itemBuilder(index),
    );
  }

  Widget _itemBuilder(int index) {
    return SizedBox.fromSize(
      size: Size.square(widget.size / 3),
      child: widget.itemBuilder != null
          ? widget.itemBuilder(context, index)
          : DecoratedBox(
              decoration: BoxDecoration(
                shape: widget.shape,
                color: widget.color,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
