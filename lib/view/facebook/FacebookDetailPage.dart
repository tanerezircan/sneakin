import 'package:flutter/material.dart';
import 'package:sneakin/model/Facebook.dart';

class FacebookDetailPage extends StatefulWidget {
  final Facebook facebook;

  const FacebookDetailPage({Key key, this.facebook}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FacebookDetailPageState(facebook);
}

class FacebookDetailPageState extends State<FacebookDetailPage> {
  final Facebook facebook;

  FacebookDetailPageState(this.facebook);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Facebook"),
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
