import 'package:flutter/material.dart';
import 'package:sneakin/model/LinkedIn.dart';

class LinkedInDetailPage extends StatefulWidget {
  final LinkedIn linkedIn;

  const LinkedInDetailPage({Key key, this.linkedIn}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LinkedInDetailPageState(linkedIn);
}

class LinkedInDetailPageState extends State<LinkedInDetailPage> {
  final LinkedIn linkedIn;

  LinkedInDetailPageState(this.linkedIn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on LinkedIn"),
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
