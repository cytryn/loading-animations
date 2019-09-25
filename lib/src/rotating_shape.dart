import 'dart:math';

import 'package:flutter/material.dart';

/// Creates a loading animation that rotates 360 degrees clockwise
class LoadingRotating extends StatefulWidget {
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
  /// Default value is set to [Duration(milliseconds: 1500)].
  final Duration duration;

  /// Sets an [IndexedWidgetBuilder] function to return
  /// your own customized widget.
  final IndexedWidgetBuilder itemBuilder;

  /// Creates the LoadingRotating animation with a square shape
  LoadingRotating.square({
    Key key,
    this.controller,
    this.borderColor = Colors.blueGrey,
    this.backgroundColor = Colors.transparent,
    this.size = 50.0,
    this.borderSize,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1500),
  })  : assert(backgroundColor != null,
            'loading_animations: property [backgroundColor] must not be null. Prefer using Colors.transparent instead.'),
        assert(borderColor != null,
            'loading_animations: property [borderColor] must not be null. Prefer using Colors.transparent instead.'),
        assert(size != null,
            'loading_animations: property [size] must not be null'),
        assert(borderSize != null ? borderSize < size / 2 : true,
            'loading_animations: property [borderSize] must not be greater than half the widget size'),
        assert(duration != null,
            'loading_animations: property [duration] must not be null'),
        _shape = BoxShape.rectangle,
        super(key: key);

  @override
  _LoadingRotatingState createState() => _LoadingRotatingState();
}

class _LoadingRotatingState extends State<LoadingRotating>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ??
        AnimationController(duration: widget.duration, vsync: this);

    _animation = CurveTween(curve: Curves.easeInOut).animate(_controller)
      ..addListener(
        () => setState(() {}),
      );

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final Matrix4 transform = Matrix4.rotationZ(_animation.value * pi * 2.0);

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
        : DecoratedBox(
            decoration: BoxDecoration(
              shape: widget._shape,
              color: widget.backgroundColor,
              border: Border.all(
                color: widget.borderColor,
                width: widget.borderSize ?? widget.size / 8,
                style: BorderStyle.solid,
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
