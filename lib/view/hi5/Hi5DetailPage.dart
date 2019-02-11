import 'package:flutter/material.dart';
import 'package:sneakin/model/Hi5.dart';

class Hi5DetailPage extends StatefulWidget {
  final Hi5 hi5;

  const Hi5DetailPage({Key key, this.hi5}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Hi5DetailPageState(hi5);
}

class Hi5DetailPageState extends State<Hi5DetailPage> {
  final Hi5 hi5;

  Hi5DetailPageState(this.hi5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Hi5"),
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
                child: Image.asset("assets/images/aglak.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
