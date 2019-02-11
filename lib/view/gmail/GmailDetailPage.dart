import 'package:flutter/material.dart';
import 'package:sneakin/model/Gmail.dart';

class GmailDetailPage extends StatefulWidget {
  final Gmail gmail;

  const GmailDetailPage({Key key, this.gmail}) : super(key: key);

  @override
  State<StatefulWidget> createState() => GmailDetailPageState(gmail);
}

class GmailDetailPageState extends State<GmailDetailPage> {
  final Gmail gmail;

  GmailDetailPageState(this.gmail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Gmail"),
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
