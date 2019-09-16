import 'dart:math';

import 'package:flutter/material.dart';

/// Creates a loading animation that flips horizontally 3 times
class LoadingFlipping extends StatefulWidget {
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

  /// Creates the LoadingFlipping animation with a circle shape
  LoadingFlipping.circle({
    Key key,
    this.controller,
    this.borderColor = Colors.blueGrey,
    this.backgroundColor = Colors.transparent,
    this.size = 50.0,
    this.borderSize,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1500),
  })  : assert(backgroundColor != null || borderColor != null,
            'loading_animations: property [backgorundColor] or [borderColor] must not be null'),
        assert(size != null,
            'loading_animations: property [size] must not be null'),
        assert(borderSize != null ? borderSize < size / 2 : true,
            'loading_animations: property [borderSize] must not be greater than half the widget size'),
        assert(duration != null,
            'loading_animations: property [duration] must not be null'),
        _shape = BoxShape.circle,
        super(key: key);

  /// Creates the LoadingFlipping animation with a square shape
  LoadingFlipping.square({
    Key key,
    this.controller,
    this.borderColor = Colors.blueGrey,
    this.backgroundColor = Colors.transparent,
    this.size = 50.0,
    this.borderSize,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1500),
  })  : assert(borderColor != null,
            'loading_animations: property [color] must not be null'),
        assert(size != null,
            'loading_animations: property [size] must not be null'),
        assert(borderSize != null ? borderSize < size / 2 : true,
            'loading_animations: property [borderSize] must not be greater than half the widget size'),
        assert(duration != null,
            'loading_animations: property [duration] must not be null'),
        _shape = BoxShape.rectangle,
        super(key: key);

  @override
  _LoadingFlippingState createState() => _LoadingFlippingState();
}

class _LoadingFlippingState extends State<LoadingFlipping>
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
    final Matrix4 transform = Matrix4.identity()
      ..setEntry(3, 2, widget._shape == BoxShape.circle ? 0.002 : 0.005)
      ..rotateY(_animation.value * 3 * -pi);

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
              color: widget.backgroundColor ?? Colors.transparent,
              border: Border.all(
                color: widget.borderColor,
                width: widget.borderSize ?? widget.size / 6,
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
