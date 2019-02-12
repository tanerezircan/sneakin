import 'package:flutter/material.dart';
import 'package:sneakin/model/Address.dart';
import 'package:sneakin/model/Facebook.dart';
import 'package:sneakin/model/Flickr.dart';
import 'package:sneakin/model/Gmail.dart';
import 'package:sneakin/model/Hi5.dart';
import 'package:sneakin/model/Instagram.dart';
import 'package:sneakin/model/LinkedIn.dart';
import 'package:sneakin/model/Pinterest.dart';
import 'package:sneakin/model/Soundcloud.dart';
import 'package:sneakin/model/Tumblr.dart';
import 'package:sneakin/model/Twitter.dart';
import 'package:sneakin/model/Youtube.dart';
import 'package:sneakin/view/home/SocialMediaResultPage.dart';

class SneakSearchPage extends StatefulWidget {
  @override
  _SneakSearchPageState createState() => _SneakSearchPageState();
}

searchPeople(BuildContext context, [String name, String surname]) {
  if (name.isEmpty && surname.isEmpty) {
    AlertDialog alertDialog = new AlertDialog(
      title: Text("Warning"),
      content: Text("Least 1 Field is Required!"),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  } else {
    // TODO: async method should call and passing to result page via parameter

    final List<dynamic> socialData = <dynamic>[
      Facebook(
          title: "Facebook",
          icon: Image.asset("assets/icons/facebook.png"),
          children: <Facebook>[
            Facebook(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Facebook(
                title: "Emre Taners",
                age: 26,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/emre_taners",
                image: Image.asset("assets/images/emre_taners.png")),
            Facebook(
                title: "Ezgi",
                age: 28,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/ezgi",
                image: Image.asset("assets/images/ezgi.png")),
            Facebook(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taners",
                image: Image.asset("assets/images/taners.png")),
            Facebook(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taners.ezircans",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Facebook(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/tenere.tenere",
                image: Image.asset("assets/images/taners.png")),
            Facebook(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/tnr.tnr",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Facebook(
                title: "Emre Fikirlier",
                age: 26,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/emre.fikirlier",
                image: Image.asset("assets/images/emre_taners.png")),
            Facebook(),
          ]),
      Twitter(
          title: "Twitter",
          icon: Image.asset("assets/icons/twitter.png"),
          children: <Twitter>[
            Twitter(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Twitter(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Twitter(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Twitter(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Twitter(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Twitter(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Twitter(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Twitter(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Twitter(),
          ]),
      Instagram(
          title: "Instagram",
          icon: Image.asset("assets/icons/instagram.png"),
          children: <Instagram>[
            Instagram(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Instagram(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Instagram(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Instagram(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Instagram(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Instagram(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Instagram(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Instagram(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Instagram(),
          ]),
      LinkedIn(
          title: "LinkedIn",
          icon: Image.asset("assets/icons/linkedin.png"),
          children: <LinkedIn>[
            LinkedIn(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            LinkedIn(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            LinkedIn(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            LinkedIn(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            LinkedIn(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            LinkedIn(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            LinkedIn(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            LinkedIn(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            LinkedIn(),
          ]),
      Youtube(
          title: "Youtube",
          icon: Image.asset("assets/icons/youtube.png"),
          children: <Youtube>[
            Youtube(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Youtube(
                title: "Emre Taners",
                image: Image.asset("assets/images/emre_taners.png")),
            Youtube(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Youtube(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Youtube(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Youtube(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Youtube(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Youtube(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Youtube(),
          ]),
      Gmail(
          title: "Gmail",
          icon: Image.asset("assets/icons/gmail.png"),
          children: <Gmail>[
            Gmail(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Gmail(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Gmail(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Gmail(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Gmail(),
          ]),
      Flickr(
          title: "Flickr",
          icon: Image.asset("assets/icons/flickr.png"),
          children: <Flickr>[
            Flickr(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Flickr(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Flickr(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Flickr(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Flickr(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Flickr(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Flickr(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Flickr(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Flickr(),
          ]),
      Pinterest(
          title: "Pinterest",
          icon: Image.asset("assets/icons/pinterest.png"),
          children: <Pinterest>[
            Pinterest(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Pinterest(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Pinterest(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Pinterest(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Pinterest(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Pinterest(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Pinterest(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Pinterest(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Pinterest(),
          ]),
      Soundcloud(
          title: "Soundcloud",
          icon: Image.asset("assets/icons/soundcloud.png"),
          children: <Soundcloud>[
            Soundcloud(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Soundcloud(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Soundcloud(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Soundcloud(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Soundcloud(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Soundcloud(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Soundcloud(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Soundcloud(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Soundcloud(),
          ]),
      Hi5(
          title: "Hi5",
          age: 29,
          address: Address(street: "Kentucky"),
          linkId: "www.facebook.com/taner.ezircan",
          icon: Image.asset("assets/icons/hi5.png"),
          children: <Hi5>[
            Hi5(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Hi5(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Hi5(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Hi5(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Hi5(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Hi5(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Hi5(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Hi5(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Hi5(),
          ]),
      Tumblr(
          title: "Tumblr",
          icon: Image.asset("assets/icons/tumblr.png"),
          children: <Tumblr>[
            Tumblr(
                title: "Taner Ezircan",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taner_ezircan.png")),
            Tumblr(
                title: "Emre Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/emre_taners.png")),
            Tumblr(
                title: "Ezgi",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/ezgi.png")),
            Tumblr(
                title: "Taners",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Tumblr(
                title: "Taners Ezircans",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Tumblr(
                title: "TeNeRe TeNeRe",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Tumblr(
                title: "TnR TnR",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Tumblr(
                title: "Jineko",
                age: 29,
                address: Address(street: "Kentucky"),
                linkId: "www.facebook.com/taner.ezircan",
                image: Image.asset("assets/images/taners.png")),
            Tumblr(),
          ]),
    ];

    Navigator.push(context,
        MaterialPageRoute(builder: (_) => SocialMediaResultPage(socialData)));
  }
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
                  child: Image.asset(
                    "assets/icons/search_people.png",
                    fit: BoxFit.cover,
                  ))),
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
