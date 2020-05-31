import 'package:flutter/material.dart';

class TimeLine extends StatefulWidget {

  bool tap;
  var data;

  TimeLine({
    this.tap = true,
    this.data = Null
  });

  @override
  State<StatefulWidget> createState() {
    State<StatefulWidget> state =  TimeLineState( tap: this.tap, data: this.data);
    return state;
  }

}

class TimeLineState extends State<TimeLine>{

  bool tap;
  List<Widget> widgetList; 
  var data ;
  

  TimeLineState({
    this.tap = true,
    this.data = Null
  });

  @override
  void initState() {
    super.initState();
    this.widgetList = List.generate(data['sublocations'].length, (index) => createSection(data['sublocations'][index]));
  }

  @override
  Widget build(BuildContext context){
    return this.createTimeline(this.widgetList);
  }

  Widget createTimeline(List<Widget> widgetList){
    return  ListView(
      children:  widgetList
    );
  }

  onTap(){
    
    setState(() {
      widgetList.add(createSection(widgetList.length++));
      build(context);
    });
  }

  Widget createSection(var data){
    return Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Card(
              margin: EdgeInsets.only(top:10.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: InkWell(
                splashColor: Colors.black,
                onTap: (){},
                  child: ListTile(
                    title: Text(data['location'])
                  )
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
                      builder: (context) =>  new Scaffold(body: TimeLine(tap: false, data: data))
                    )
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 160.0,
                  color: Colors.indigo,
                  child: ListTile(
                    title: Text([ for (var loc in data['sublocations']) loc['location']].join(' -> '))
                  ),
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
          Positioned(
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
                widgetList.add(createSection(widgetList.length++));
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

}