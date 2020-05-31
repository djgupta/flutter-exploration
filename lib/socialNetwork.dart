import 'package:flutter/material.dart';
import 'package:exploreFlutter/timeline.dart';
import 'package:exploreFlutter/data.dart';

class SocialNetwork extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new SocialNetworkState();
  }
}

class SocialNetworkState extends State<SocialNetwork>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: Text(data[1]['location'])),
      body: TimeLine( data: data[1],)
    );
  }
}