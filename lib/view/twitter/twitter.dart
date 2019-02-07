import 'package:flutter/material.dart';

class TwitterPage extends StatefulWidget {
  @override
  _TwitterPageState createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Twitter'))),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomCenter,
              child: Center(
                  child: Text(
                "welcome to twitter page",
                textDirection: TextDirection.ltr,
              )),
            )
          ],
        ),
      ),
    );
  }
}
