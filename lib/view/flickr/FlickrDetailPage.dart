import 'package:flutter/material.dart';
import 'package:sneakin/model/Flickr.dart';

class FlickrDetailPage extends StatefulWidget {
  final Flickr flickr;

  const FlickrDetailPage({Key key, this.flickr}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FlickrDetailPageState(flickr);
}

class FlickrDetailPageState extends State<FlickrDetailPage> {
  final Flickr flickr;

  FlickrDetailPageState(this.flickr);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Flickr"),
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
