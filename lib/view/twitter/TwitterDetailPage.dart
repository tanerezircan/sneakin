import 'package:flutter/material.dart';
import 'package:sneakin/model/Twitter.dart';

class TwitterDetailPage extends StatefulWidget {
  final Twitter twitter;

  const TwitterDetailPage({Key key, this.twitter}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TwitterDetailPageState(twitter);
}

class TwitterDetailPageState extends State<TwitterDetailPage> {
  final Twitter twitter;

  TwitterDetailPageState(this.twitter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Twitter"),
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
