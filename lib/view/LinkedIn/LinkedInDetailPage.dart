import 'package:flutter/material.dart';
import 'package:sneakin/model/LinkedIn.dart';

class LinkedInDetailPage extends StatefulWidget {
  final LinkedIn person;

  const LinkedInDetailPage({Key key, this.person}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LinkedInDetailPageState(person);
}

class LinkedInDetailPageState extends State<LinkedInDetailPage> {
  final LinkedIn person;

  LinkedInDetailPageState(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${person.title} on LinkedIn"),
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
