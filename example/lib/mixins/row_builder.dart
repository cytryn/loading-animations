import 'package:flutter/material.dart';

mixin RowBuilder {
  Widget buildRow(String title, Widget body) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Center(child: Text(title)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: body,
        ),
        Divider(
          height: 30,
        ),
      ],
    );
  }
}
