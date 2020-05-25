import 'dart:math';

import 'package:flutter/material.dart';

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
      body: TimeLine(boxCount:3)
    );
  }
}

class TimeLine extends StatefulWidget {

  int boxCount;
  bool tap;

  TimeLine({
    this.boxCount = 2,
    this.tap = true
  });

  @override
  State<StatefulWidget> createState() {
    State<StatefulWidget> state =  TimeLineState(boxCount: this.boxCount, tap: this.tap);
    return state;
  }

}

class TimeLineState extends State<TimeLine>{

  int boxCount;
  bool tap;
  ListView timeline;

  TimeLineState({
    this.boxCount = 2,
    this.tap = true
  });

  onTap(){
    this.boxCount++;
    setState(() {
      boxCount: this.boxCount;
    });
    this.timeline = createTimeline();
  }

  Widget createSection(){
    return Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Card(
              margin: EdgeInsets.only(top:10.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: InkWell(
                splashColor: Colors.black,
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  height: 40.0,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Card(
              margin: EdgeInsets.only(top:50.0, bottom: 30.0, left: 10.0, right: 10.0),
              child: InkWell(
                onTap: (){
                  if (this.tap){
                    Navigator.push(
                    context, new MaterialPageRoute(
                      builder: (context) =>  new Scaffold(body: TimeLine(tap: false))
                    )
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 160.0,
                  color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 35.0,
            child: new Container(
              height: double.infinity,
              width: 1.0,
              color: Colors.blue,
            ),
          ),
          new Positioned(
            top: 100.0,
            left: 15.0,
            child: new Container(
              height: 40.0,
              width: 40.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: new Container(
                margin: new EdgeInsets.all(5.0),
                height: 30.0,
                width: 30.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red),
              ),
            ),
          ),
          Positioned(
            top: 220.0,
            left: 25.0,
            child: InkWell(
              onTap: (){
                onTap();
              },
              child: Container(
                height: 20.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: new Container(
                  margin: new EdgeInsets.all(5.0),
                  height: 30.0,
                  width: 30.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black),
                ),
              ),
            )
            

          )
        ],
      );
  }

  Widget createTimeline(){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
      return createSection();
      },
      itemCount: this.boxCount,
    ); 
  }

  @override
  void initState() {
    super.initState();
    this.timeline = createTimeline();
  }

  @override
  Widget build(BuildContext context){
    return this.timeline;
  }
}