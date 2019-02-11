import 'package:flutter/material.dart';
import 'package:sneakin/model/Youtube.dart';

class YoutubeDetailPage extends StatefulWidget {
  final Youtube youtube;

  const YoutubeDetailPage({Key key, this.youtube}) : super(key: key);

  @override
  State<StatefulWidget> createState() => YoutubeDetailPageState(youtube);
}

class YoutubeDetailPageState extends State<YoutubeDetailPage> {
  final Youtube youtube;

  YoutubeDetailPageState(this.youtube);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Youtube"),
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
