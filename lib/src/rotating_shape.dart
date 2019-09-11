import 'dart:math';

import 'package:flutter/material.dart';

class LoadingRotating extends StatefulWidget {
  final AnimationController controller;
  final Color borderColor;
  final Color backgroundColor;
  final BoxShape shape;
  final double size;
  final double borderSize;
  final Duration duration;
  final IndexedWidgetBuilder itemBuilder;

  LoadingRotating.square({
    Key key,
    this.controller,
    this.borderColor = Colors.blueGrey,
    this.backgroundColor = Colors.transparent,
    // this.shape = BoxShape.rectangle,
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
              shape: widget.shape,
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
