import 'package:flutter/material.dart';

class SneakHomePage extends StatefulWidget {
  @override
  _SneakHomePageState createState() => _SneakHomePageState();
}

searchPeople(BuildContext context, [String name, String surname]) {
  print("name: $name, surname: $surname");
  Navigator.pushNamed(context, "/sneakSocialMediaList");
}

class _SneakHomePageState extends State<SneakHomePage> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final nameGlobalController = GlobalKey<FormState>();
  final surnameGlobalController = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Sneak In'))),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Taners'),
              accountEmail: Text('taners@tenere.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            RaisedButton(
              child: Text(
                "Facebook",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Twitter",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Instagram",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "LinkedIn",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Youtube",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Gmail",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Flickr",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Pinterest",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Soundcloud",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Mynet",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Hi5",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
            RaisedButton(
              child: Text(
                "Tumblr",
                textDirection: TextDirection.ltr,
              ),
              onPressed: () => {},
            ),
          ],
        ),
      ),
      body: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(10.0),
              color: Colors.lightBlue[50],
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Center(
                    child: Text(
                      "Search People",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 40,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ],
                textDirection: TextDirection.ltr,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(40.0),
                color: Colors.lightBlue[50],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        maxLength: 20,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.none,
                            color: Colors.black),
                        controller: nameController,
                        key: nameGlobalController,
                        textDirection: TextDirection.ltr,
                        decoration: InputDecoration(hintText: "Name"),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        maxLength: 20,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                        controller: surnameController,
                        key: surnameGlobalController,
                        textDirection: TextDirection.ltr,
                        decoration: InputDecoration(hintText: "Surname"),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      tooltip: 'Search',
                      onPressed: () {
                        searchPeople(
                            context, nameController.text, surnameController.text);
                      },
                    ),
                  ],
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
