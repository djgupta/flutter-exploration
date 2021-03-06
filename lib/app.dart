import 'package:exploreFlutter/socialNetwork.dart';
import 'package:flutter/material.dart';
import 'package:exploreFlutter/home.dart';
import 'package:exploreFlutter/discover.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }
}

class AppState extends State<App>{

  int selectedIndex = 0;
  final widgetOptions = [
    Discover(),
    Home(),
    SocialNetwork()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('Social Networks'),
        ),
        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add_circle),
          onPressed: fabPressed
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.public),
              title: Text('Discover'),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.work),
              title: Text('Networks'),
            ),
          ],
      currentIndex: selectedIndex,
      fixedColor: Colors.indigo,
      onTap: onItemTapped
      ),
    );
  }
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void fabPressed() {}
}