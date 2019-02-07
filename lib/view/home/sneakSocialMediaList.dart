import 'package:flutter/material.dart';

class SneakSocialMediaListPage extends StatefulWidget {
  @override
  _SneakSocialMediaListPageState createState() => _SneakSocialMediaListPageState();
}

class _SneakSocialMediaListPageState extends State<SneakSocialMediaListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Found People'))),
      body: Container(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text("Facebook"),
              elevation: 20.0,
              color: Color.fromRGBO(66, 103, 178, 5),
              // leading: Image.network("http://i.pravatar.cc/300"),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text("Twitter"),
              onPressed: () {Navigator.pushNamed(context, "/twitter");},
              color: Color.fromRGBO(56, 161, 243, 5),
              elevation: 20.0,
              //  leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Instagram"),
              color: Color.fromRGBO(195, 42, 163, 5),
              elevation: 20.0,
              onPressed: () => {},
              //  leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("LinkedIn"),
              color: Color.fromRGBO(0, 119, 181, 5),
              elevation: 20.0,
              onPressed: () => {},
              //  leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Youtube"),
              color: Color.fromRGBO(237, 56, 51, 5),
              elevation: 20.0,
              onPressed: () => {},
              // leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Gmail"),
              color: Color.fromRGBO(219, 68, 55, 5),
              elevation: 20.0,
              onPressed: () => {},
              // leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Flickr"),
              color: Color.fromRGBO(244, 0, 131, 5),
              elevation: 20.0,
              onPressed: () => {},
              // leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Pinterest"),
              color: Color.fromRGBO(189, 8, 28, 5),
              elevation: 20.0,
              onPressed: () => {},
              // leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Soundcloud"),
              color: Color.fromRGBO(255, 85, 0, 5),
              elevation: 20.0,
              onPressed: () => {},
              // leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Hi5"),
              color: Color.fromRGBO(66, 103, 178, 5),
              elevation: 20.0,
              onPressed: () => {},
              // leading: Image.network("http://i.pravatar.cc/300"),
            ),
            RaisedButton(
              child: Text("Tumblr"),
              color: Color.fromRGBO(54, 70, 93, 5),
              elevation: 20.0,
              onPressed: () => {},
              // leading: Image.network("http://i.pravatar.cc/300"),
            ),
          ],
        ),
      ),
    );
  }
}
