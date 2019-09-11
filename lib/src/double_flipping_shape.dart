import 'dart:math';

import 'package:flutter/material.dart';

class LoadingDoubleFlipping extends StatefulWidget {
  final AnimationController controller;
  final Color backgroundColor;
  final Color borderColor;
  final BoxShape shape;
  final double size;
  final double borderSize;
  final Duration duration;
  final IndexedWidgetBuilder itemBuilder;

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
        shape = BoxShape.circle,
        super(key: key);

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
        shape = BoxShape.rectangle,
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
