import 'package:flutter/material.dart';
import 'package:sneakin/view/twitter/twitter.dart';

class SneakSideMenuPage extends StatefulWidget {
  @override
  _SneakSideMenuPageState createState() => _SneakSideMenuPageState();
}

class _SneakSideMenuPageState extends State<SneakSideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Select Social Platform'))),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(66, 103, 178, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Facebook",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Image.asset("assets/icons/Icon-hdpi.png",
                            height: 50.0,
                            width: 60.0,
                            fit: BoxFit.cover,),
                            Center(
                              child: Text(
                                value,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(56, 161, 243, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Twitter",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(0, 119, 181, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Instagram",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(0, 119, 181, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "LinkedIn",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(237, 56, 51, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Youtube",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(219, 68, 55, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Gmail",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(244, 0, 131, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Flickr",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(189, 8, 28, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Pinterest",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(219, 68, 55, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Soundcloud",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(219, 68, 55, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Mynet",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(66, 103, 178, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Hi5",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Text(
                              value,
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            Container(
              color: Color.fromRGBO(54, 70, 93, 5),
              child: DropdownButton<String>(
                isExpanded: true,
                isDense: false,
                hint: Center(
                  child: Text(
                    "Tumblr",
                    textDirection: TextDirection.ltr,
                  ),
                ),
                items: <String>['Taners', 'TeNeRe', 'TnR', 'Jineko'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.face),
                            Center(
                              child: Text(
                                value,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ],
                        ));
                  },
                ).toList(),
                onChanged: (_) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwitterPage("TeNeRe")));
                },
                //  color: Color.fromRGBO(66, 103, 178, 5),
                // leading: Image.network("http://i.pravatar.cc/300"),
              ),
            ),
            /*
            RaisedButton(
              child: Text("Twitter"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TwitterPage("TeNeRe")));
              },
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
            */
          ],
        ),
      ),
    );
  }
}
