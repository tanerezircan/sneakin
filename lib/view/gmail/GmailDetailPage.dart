import 'package:flutter/material.dart';
import 'package:sneakin/model/Gmail.dart';

class GmailDetailPage extends StatefulWidget {
  final Gmail person;

  const GmailDetailPage({Key key, this.person}) : super(key: key);

  @override
  State<StatefulWidget> createState() => GmailDetailPageState(person);
}

class GmailDetailPageState extends State<GmailDetailPage> {
  final Gmail person;

  GmailDetailPageState(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${person.title} on Gmail"),
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        height: 250.0,
        child: Card(
          color: Colors.lightBlue[50],
          elevation: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.only(top: 15.0),
                child: person.image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
