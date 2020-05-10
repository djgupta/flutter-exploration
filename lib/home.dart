import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
  return ListView(
    children:  <Widget>[
      Card(
        child: ListTile(
          leading: VerticalDivider(color: Colors.yellow, thickness: 5),
          title: Text('Google'),
          subtitle: Text('Searches...'),
          trailing: Icon(Icons.notifications_paused),
        ),
      ),
      Card(
        child: ListTile(
          
          leading: VerticalDivider(color: Colors.green, thickness: 5),
          title: Text('Facebook'),
          subtitle: Text('Profiles...'),
          trailing: Icon(Icons.notifications_active),
        ),
      ),
      
      Card(
        child: ListTile(
          leading: VerticalDivider(color: Colors.green, thickness: 5),
          title: Text('Twitter'),
          subtitle: Text('Opinions...'),
          trailing: Icon(Icons.notifications),
        ),
      ),
      Card(
        child: ListTile(
          leading: VerticalDivider(color: Colors.green, thickness: 5),
          title: Text('Instagram'),
          subtitle: Text('Photos...'),
          trailing: Icon(Icons.notifications_none),
        ),
      ),
      Card(
        child: ListTile(
          leading: VerticalDivider(color: Colors.blue, thickness: 5),
          title: Text('Linkedin'),
          subtitle: Text('Professionals...'),
          trailing: Icon(Icons.notifications),
        ),
      ),
      Card(
        child: ListTile(
          leading: VerticalDivider(color: Colors.blue, thickness: 5),
          title: Text('Whatsapp'),
          subtitle: Text('Personal...'),
          trailing: Icon(Icons.notifications_none),
        ),
      ),
      Card(
        child: InkWell(
          splashColor: Colors.indigo,
          onTap: tileTapped,
          child: ListTile(
            leading: VerticalDivider(color: Colors.blue, thickness: 5),
            title: Text('Youtube'),
            subtitle: Text('Videos...'),
            trailing: Icon(Icons.notifications_none),
        ),
        ),
      ),

    ],
  );
}

  void tileTapped() {
    print('Tile tapped');
  }
}

