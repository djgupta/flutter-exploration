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
          Card(
            child: ListTile(
              leading: VerticalDivider(color: Colors.yellow, thickness: 5),
              title: Text(data['location']),
              subtitle: Text([ for (var loc in data['sublocations']) loc['location']].join(' -> ')),
              trailing: Icon(Icons.info_outline),
            ),
          ),
        ],
      );
  }

}