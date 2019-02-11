import 'package:flutter/material.dart';

class SneakSideMenuPage extends StatefulWidget {
  @override
  _SneakSideMenuPageState createState() => _SneakSideMenuPageState();
}

class _SneakSideMenuPageState extends State<SneakSideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('SnekIn'),
            accountEmail: Text('sneakin11235@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://i.pravatar.cc/300'),
            ),
          ),
          RaisedButton(
            child: Text(
              "About Us",
              style: TextStyle(color: Colors.blue),
              textDirection: TextDirection.ltr,
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
            highlightElevation: 100.0,
            textTheme: ButtonTextTheme.primary,
            textColor: Colors.blue,
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Contact",
              style: TextStyle(color: Colors.blue),
              textDirection: TextDirection.ltr,
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
            highlightElevation: 100.0,
            textTheme: ButtonTextTheme.primary,
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
