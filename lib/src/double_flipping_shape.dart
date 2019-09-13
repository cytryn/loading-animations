import 'dart:math';

import 'package:flutter/material.dart';

/// Creates a loading animation the flips vertically and then horizontally
class LoadingDoubleFlipping extends StatefulWidget {
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

  /// Create the LoadingDoubleFlipping animation with a circle shape
  LoadingDoubleFlipping.circle({
    Key key,
    this.controller,
    this.backgroundColor = Colors.blueGrey,
    this.borderColor = Colors.transparent,
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
        _shape = BoxShape.circle,
        super(key: key);

  /// Create the LoadingDoubleFlipping animation with a square shape
  LoadingDoubleFlipping.square({
    Key key,
    this.controller,
    this.backgroundColor = Colors.blueGrey,
    this.borderColor = Colors.transparent,
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
  _LoadingDoubleFlippingState createState() => _LoadingDoubleFlippingState();
}

class _LoadingDoubleFlippingState extends State<LoadingDoubleFlipping>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation1;
  Animation<double> _animation2;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ??
        AnimationController(vsync: this, duration: widget.duration);

    _animation1 = Tween(begin: 0.0, end: pi).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    )..addListener(() => setState(() {}));

    _animation2 = Tween(begin: 0.0, end: pi).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOut),
      ),
    )..addListener(() => setState(() {}));

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final Matrix4 transform = Matrix4.identity()
      ..setEntry(3, 2, 0.005)
      ..rotateX(_animation1.value)
      ..rotateY(_animation2.value);
    return Center(
      child: Transform(
        transform: transform,
        alignment: FractionalOffset.center,
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
