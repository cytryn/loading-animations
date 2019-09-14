import 'dart:math';

import 'package:flutter/material.dart';

/// Creates a loading animation that fills a shape
/// then rotates 360 degrees clockwise unfilling the shape
class LoadingFilling extends StatefulWidget {
  /// Sets an [AnimationController] is case you need to do something
  /// specific with it like play/pause animation.
  final AnimationController controller;

  final BoxShape _shape;

  /// The color of the shape itself.
  ///
  /// Default color is set to [Colors.blueGrey].
  final Color backgroundColor;

  /// The color of the border of the shape.
  ///
  /// Default color is set to [Colors.transparent].
  final Color borderColor;

  /// The color of the filling of the shape.
  ///
  /// Default color is set to [Colors.blueGrey].
  final Color fillingColor;

  /// Size of the whole square containing the animation.
  ///
  /// Default size is set to [50].
  final double size;

  /// Size of the border of the shape.
  ///
  /// Default size is set to [size/8].
  final double borderSize;

  /// Total duration for one cycle of animation.
  ///
  /// Default value is set to [Duration(milliseconds: 3000)].
  final Duration duration;

  /// Sets an [IndexedWidgetBuilder] function to return
  /// your own customized widget.
  final IndexedWidgetBuilder itemBuilder;

  /// Creates the LoadingFilling animation with a square shape
  LoadingFilling.square({
    Key key,
    this.controller,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.blueGrey,
    this.fillingColor = Colors.blueGrey,
    this.size = 50.0,
    this.borderSize,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 3000),
  })  : assert(backgroundColor != null || borderColor != null,
            'loading_animations: property [backgroundColor] or [borderColor] must not be null'),
        assert(fillingColor != null,
            'loading_animations: property [fillingColor] must not be null'),
        assert(size != null,
            'loading_animations: property [size] must not be null'),
        assert(borderSize != null ? borderSize < size / 2 : true,
            'loading_animations: property [borderSize] must not be greater than half the widget size'),
        assert(duration != null,
            'loading_animations: property [duration] must not be null'),
        _shape = BoxShape.rectangle,
        super(key: key);

  @override
  _LoadingFillingState createState() => _LoadingFillingState();
}

class _LoadingFillingState extends State<LoadingFilling>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation1;
  Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ??
        AnimationController(duration: widget.duration, vsync: this);

    _animation1 = CurveTween(curve: Curves.ease).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0),
      ),
    )..addListener(() => setState(() {}));

    _animation2 = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _controller,
          curve: const Interval(0.0, 1.0, curve: Curves.linear)),
    )..addListener(() => setState(() {}));

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final Matrix4 transform = Matrix4.rotationZ(_animation1.value * pi * 2.0);

    return Center(
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child: SizedBox.fromSize(
          size: Size.square(widget.size),
          child: _itemBuilder(0),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) {
    return widget.itemBuilder != null
        ? widget.itemBuilder(context, index)
        : Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              // fill shape
              Positioned(
                height: (1 - _animation2.value.abs()) * widget.size,
                width: widget.size,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: widget._shape,
                    color: widget.fillingColor,
                  ),
                ),
              ),
              // border shape
              DecoratedBox(
                decoration: BoxDecoration(
                  shape: widget._shape,
                  color: widget.backgroundColor,
                  border: Border.all(
                    color: widget.borderColor,
                    width: widget.borderSize ?? widget.size / 8,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ],
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
