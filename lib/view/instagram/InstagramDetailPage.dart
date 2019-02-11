import 'package:flutter/material.dart';
import 'package:sneakin/model/Instagram.dart';

class InstagramDetailPage extends StatefulWidget {
  final Instagram instagram;

  const InstagramDetailPage({Key key, this.instagram}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InstagramDetailPageState(instagram);
}

class InstagramDetailPageState extends State<InstagramDetailPage> {
  final Instagram instagram;

  InstagramDetailPageState(this.instagram);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Instagram"),
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
