import 'package:flutter/material.dart';
import 'package:sneakin/model/Tumblr.dart';

class TumblrDetailPage extends StatefulWidget {
  final Tumblr tumblr;

  const TumblrDetailPage({Key key, this.tumblr}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TumblrDetailPageState(tumblr);
}

class TumblrDetailPageState extends State<TumblrDetailPage> {
  final Tumblr tumblr;

  TumblrDetailPageState(this.tumblr);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Tumblr"),
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
