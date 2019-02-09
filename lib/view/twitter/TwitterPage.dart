import 'package:flutter/material.dart';

class TwitterPage extends StatefulWidget {
  final String nameSurname;

  TwitterPage([this.nameSurname]);

  @override
  _TwitterPageState createState() => _TwitterPageState(nameSurname);
  
}

class _TwitterPageState extends State<TwitterPage> {
  final String nameSurname;

  _TwitterPageState(this.nameSurname);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('$nameSurname on Twitter'))),
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
