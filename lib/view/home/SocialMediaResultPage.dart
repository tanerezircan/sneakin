import 'package:flutter/material.dart';
import 'package:sneakin/model/Facebook.dart';
import 'package:sneakin/view/facebook/FacebookPage.dart';

class SocialMediaResultPage extends StatefulWidget {
  @override
  _SocialMediaResultPageState createState() => _SocialMediaResultPageState();
}

final List<Facebook> data = <Facebook>[
  Facebook("Facebook", <Facebook>[
    Facebook(
        "TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Twitter", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Instagram", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("LinkedIn", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Youtube", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Gmail", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Flickr", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Pinterest", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Mynet", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Hi5", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ]),
  Facebook("Tumblr", <Facebook>[
    Facebook("Taners Ezircans"),
    Facebook("TeNeRe TeNeRe"),
    Facebook("TnR TnR"),
    Facebook("Jineko"),
  ])
];

class _SocialMediaResultPageState extends State<SocialMediaResultPage> {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
          'Select Social Platform',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ))),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(top: 2.0),
              child: Card(
                // color: Colors.lightBlue[50],
                elevation: 30.0,
                margin: EdgeInsets.all(1.0),
                child: FacebookPage(data[index]),
              ),
            );
          },
          itemCount: data.length,
          controller: _scrollController,
        ));
  }
}
