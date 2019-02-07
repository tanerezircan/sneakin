import 'package:flutter/material.dart';

void main() => runApp(SneakInApplication());

class SneakInApplication extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sneak In',
      home: SneakHomePage(),
    );
  }
}

class SneakHomePage extends StatefulWidget {
  @override
  _SneakHomePageState createState() => _SneakHomePageState();
}

class _SneakHomePageState extends State<SneakHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sneak In')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Taners'),
              accountEmail: Text('taners@tenere.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
