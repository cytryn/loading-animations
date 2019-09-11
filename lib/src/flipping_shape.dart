import 'dart:math';

import 'package:flutter/material.dart';

class LoadingFlipping extends StatefulWidget {
  final AnimationController controller;
  final BoxShape shape;
  final Color borderColor;
  final Color backgroundColor;
  final double size;
  final double borderSize;
  final Duration duration;
  final IndexedWidgetBuilder itemBuilder;

  LoadingFlipping.circle({
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
        shape = BoxShape.circle,
        super(key: key);

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
        shape = BoxShape.rectangle,
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
      ..setEntry(3, 2, widget.shape == BoxShape.circle ? 0.002 : 0.005)
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
              shape: widget.shape,
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
