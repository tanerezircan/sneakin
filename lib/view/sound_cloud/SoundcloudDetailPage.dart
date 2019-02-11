import 'package:flutter/material.dart';
import 'package:sneakin/model/Soundcloud.dart';

class SoundcloudDetailPage extends StatefulWidget {
  final Soundcloud soundcloud;

  const SoundcloudDetailPage({Key key, this.soundcloud}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SoundcloudDetailPageState(soundcloud);
}

class SoundcloudDetailPageState extends State<SoundcloudDetailPage> {
  final Soundcloud soundcloud;

  SoundcloudDetailPageState(this.soundcloud);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeNeRe on Soundcloud"),
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
