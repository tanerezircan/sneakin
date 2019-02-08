import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:sneakin/service/twitter_service/twitterService.dart';

class SneakHomePage extends StatefulWidget {
  @override
  _SneakHomePageState createState() => _SneakHomePageState();
}

searchPeople(BuildContext context, [String name, String surname]) {
  if (name.isEmpty && surname.isEmpty) {
    print("İsim veya Soyisimden en az biri dolu olmalıdır!");
    return;
  }

  print("name: $name, surname: $surname");
  Navigator.pushNamed(context, "/sneakSideMenu");

  TwitterService twitterService = new TwitterService();
  twitterService
      .getRequest("http://jsonplaceholder.typicode.com/users")
      .then((response) {
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print("json response :  $jsonResponse");
    }
  });
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
  void initState() {
    nameController.clear();
    surnameController.clear();
    super.initState();
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.lightBlue[50],
              padding: EdgeInsets.only(top: 40.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Center(
                    child: Text(
                      "Search People",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30,
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
                padding: EdgeInsets.only(top: 80.0),
                color: Colors.lightBlue[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
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
                          decoration: InputDecoration(labelText: "Name"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
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
                          decoration: InputDecoration(labelText: "Surname"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      tooltip: 'Search',
                      onPressed: () {
                        searchPeople(context, nameController.text,
                            surnameController.text);
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
