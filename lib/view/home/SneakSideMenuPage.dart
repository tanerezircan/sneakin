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
            accountName: Text('Taners'),
            accountEmail: Text('taners@tenere.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://i.pravatar.cc/300'),
            ),
          ),
          RaisedButton(
            child: Text(
              "Facebook",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Twitter",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Instagram",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "LinkedIn",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Youtube",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Gmail",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Flickr",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Pinterest",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Soundcloud",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Hi5",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
          RaisedButton(
            child: Text(
              "Tumblr",
              textDirection: TextDirection.ltr,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
