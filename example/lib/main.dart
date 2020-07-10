import 'package:example/router_constants.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;
import 'package:loading_animations/loading_animations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Loading Animations',
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRoute,
    );
  }
}
