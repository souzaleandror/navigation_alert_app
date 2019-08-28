import 'package:flutter/material.dart';
import 'package:navigation_alert_app/home-widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: HomeWidget(),
    );
  }
}
