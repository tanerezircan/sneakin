import 'package:flutter/material.dart';
import 'package:sneakin/model/Pinterest.dart';

class PinterestDetailPage extends StatefulWidget {
  final Pinterest pinterest;

  const PinterestDetailPage({Key key, this.pinterest}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PinterestDetailPageState(pinterest);
}

class PinterestDetailPageState extends State<PinterestDetailPage> {
  final Pinterest pinterest;

  PinterestDetailPageState(this.pinterest);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Pinterest"),
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
