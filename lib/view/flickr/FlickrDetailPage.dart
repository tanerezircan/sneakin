import 'package:flutter/material.dart';
import 'package:sneakin/model/Flickr.dart';
import 'package:url_launcher/url_launcher.dart';

class FlickrDetailPage extends StatefulWidget {
  final Flickr person;

  const FlickrDetailPage({Key key, this.person}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FlickrDetailPageState(person);
}

class FlickrDetailPageState extends State<FlickrDetailPage>
    with TickerProviderStateMixin {
  final Flickr person;

  FlickrDetailPageState(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${person.title} on Facebook"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildPersonImages(),
                  _buildPersonTitle(),
                  SizedBox(
                    height: 12.0,
                  )
                ],
              ),
            )
          ],
        ));
  }

  _buildPersonImages() {
    TabController _imagecontroller = new TabController(length: 5, vsync: this);
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 5, //TODO: images alani tutulursa onun length kadar olmali
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: _imagecontroller,
                  children: <Widget>[
                    this.person.image,
                    this.person.image,
                    this.person.image,
                    this.person.image,
                    this.person.image
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: _imagecontroller,
                    selectedColor: Colors.redAccent,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildPersonTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Name : ",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      shadows: [BoxShadow(spreadRadius: 10.0)],
                    ),
                  ),
                  Text(
                    "Surname : ",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      shadows: [BoxShadow(spreadRadius: 10.0)],
                    ),
                  ),
                  Text(
                    "Age : ",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      shadows: [BoxShadow(spreadRadius: 10.0)],
                    ),
                  ),
                  Text(
                    "Location : ",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      shadows: [BoxShadow(spreadRadius: 10.0)],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    this.person.title,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    this.person.title,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    "${person.age}",
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    this.person.address.street,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        this.person.linkId,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                        overflow: TextOverflow.clip,
                      ),
                      onPressed: () => _openLinkViaLancher(this.person.linkId),
                    )
                  ]),
            ],
          )
        ],
      ),
    );
  }

  _openLinkViaLancher(String linkId) async {
    if (await canLaunch(linkId)) {
      await launch(linkId);
    } else {
      AlertDialog alertDialog = new AlertDialog(
        title: Text(
          "Error",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        content: Text("$linkId Couldn't Open! "),
      );
      showDialog(context: context, builder: (_) => alertDialog);
      // throw 'Youtube_openLinkViaLancher Exception, Url could not launch $linkId';
    }
  }
}
