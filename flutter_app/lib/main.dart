import 'package:flutter/material.dart';
import './Demo/ListViewDemo.dart';
import './Demo/Hello.dart';
import './Demo/DrawerDemo.dart';
import './Demo/BottomNavigationBarDemo.dart';
import './Demo/BasicDemo.dart';
import './Demo/LayoutDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigation',
//            onPressed: () => debugPrint('Navigation button is pressed.'),
//          ),
          title: Text('首页'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Right button click.'),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'More',
              onPressed: () => debugPrint('More button click.'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

