import 'package:flutter/material.dart';
import 'package:exploreFlutter/app.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Networks',
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}