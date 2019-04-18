import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
//              DrawerHeader(
//                child: Text('header'.toUpperCase()),
//                decoration: BoxDecoration(
//                  color: Colors.grey[100],
//                ),
//              ),
          UserAccountsDrawerHeader(
            accountName: Text('YvenShane', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
            accountEmail: Text('yvenshane@aol.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://pics.sc.chinaz.com/files/pic/pic9/201904/zzpic17592.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}