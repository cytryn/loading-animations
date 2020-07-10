import 'package:example/animation_view.dart';
import 'package:example/home_view.dart';
import 'package:example/router_constants.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case AnimationRoute:
      return MaterialPageRoute(builder: (context) => AnimationView());
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}
