import 'package:flutter/material.dart';
import 'package:exploreFlutter/timeline2.dart';
import 'package:exploreFlutter/data.dart';

class Discover extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new DiscoverState();
  }
}

class DiscoverState extends State<Discover>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text(data[0]['location'])),
      body: TimeLine( data: data[0])
    );
  }
}