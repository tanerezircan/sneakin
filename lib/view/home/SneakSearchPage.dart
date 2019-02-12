import 'package:flutter/material.dart';

class SneakSearchPage extends StatefulWidget {
  @override
  _SneakSearchPageState createState() => _SneakSearchPageState();
}

searchPeople(BuildContext context, [String name, String surname]) {
  if (name.isEmpty && surname.isEmpty) {
    print("İsim veya Soyisimden en az biri dolu olmalıdır!");
    return;
  }
  Navigator.pushNamed(context, "/socialMediaResult");
/*
  TwitterService twitterService = new TwitterService();
  twitterService
      .getRequest("http://jsonplaceholder.typicode.com/users")
      .then((response) {
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print("json response :  $jsonResponse");
    }
  }); */
}

class _SneakSearchPageState extends State<SneakSearchPage> {
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
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // color: Colors.lightBlue[50],
            padding: EdgeInsets.only(top: 20.0),
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
          Center(
              child: Container(
                height: 150.0,
                width: double.infinity,
                  child: Image.asset("assets/icons/search_people.png", fit: BoxFit.cover,))),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 5.0, left: 30.0),
              // color: Colors.lightBlue[50],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 5.0),
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
                      padding: EdgeInsets.only(left: 5.0),
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
    );
  }
}
