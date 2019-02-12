import 'package:flutter/material.dart';
import 'package:sneakin/model/Hi5.dart';

class Hi5DetailPage extends StatefulWidget {
  final Hi5 person;

  const Hi5DetailPage({Key key, this.person}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Hi5DetailPageState(person);
}

class Hi5DetailPageState extends State<Hi5DetailPage> {
  final Hi5 person;

  Hi5DetailPageState(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${person.title} on Hi5"),
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
