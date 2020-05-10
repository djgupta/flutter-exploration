import 'package:exploreFlutter/bookmarks.dart';
import 'package:flutter/material.dart';
import 'package:exploreFlutter/home.dart';
import 'package:exploreFlutter/discover.dart';
import 'package:exploreFlutter/bookmarks.dart';

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
    Bookmarks(),
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
            new BottomNavigationBarItem(
              icon: const Icon(Icons.public),
              title: new Text('Discover'),
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: new Text('Home'),
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.work),
              title: new Text('Networks'),
            )
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