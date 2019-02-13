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
import 'package:sneakin/utility/util/SneakUtil.dart';
import 'package:sneakin/view/LinkedIn/LinkedInPage.dart';
import 'package:sneakin/view/facebook/FacebookPage.dart';
import 'package:sneakin/view/flickr/FlickrPage.dart';
import 'package:sneakin/view/gmail/GmailPage.dart';
import 'package:sneakin/view/hi5/Hi5Page.dart';
import 'package:sneakin/view/home/SocialMediaResultPage.dart';
import 'package:sneakin/view/instagram/InstagramPage.dart';
import 'package:sneakin/view/pinterest/PinterestPage.dart';
import 'package:sneakin/view/sound_cloud/SoundcloudPage.dart';
import 'package:sneakin/view/tumblr/TumblrPage.dart';
import 'package:sneakin/view/twitter/TwitterPage.dart';
import 'package:sneakin/view/youtube/YoutubePage.dart';

class SneakSearchPage extends StatefulWidget {
  @override
  _SneakSearchPageState createState() => _SneakSearchPageState();
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
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          iconTheme:
              IconThemeData(color: Theme.of(context).scaffoldBackgroundColor),
          title: Text(
            'Sneak In',
            style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            fontFamily: 'Arial'),
          ),
          snap: true,
          floating: true,
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 200.0, left: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 40.0, left: 5.0),
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
                            padding: EdgeInsets.only(top: 40.0, left: 5.0),
                            child: TextField(
                              maxLength: 20,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                              controller: surnameController,
                              key: surnameGlobalController,
                              textDirection: TextDirection.ltr,
                              decoration: InputDecoration(labelText: "Surname"),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40.0),
                          child: IconButton(
                            icon: Icon(Icons.search),
                            tooltip: 'Search',
                            onPressed: () {
                              searchPeople(context, nameController.text,
                                  surnameController.text);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            constraints: BoxConstraints(
                                maxHeight: 200.0, maxWidth: double.infinity),
                            child: Center(
                              child: Image.asset(
                                "assets/icons/search_people.png",
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }, childCount: 1),
        ),
      ],
    );
  }

  searchPeople(BuildContext context, [String name, String surname]) {
    if (name.isEmpty && surname.isEmpty) {
      AlertDialog alertDialog = new AlertDialog(
        title: Text("Warning"),
        content: Text("Least 1 Field is Required!"),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    } else {
      showPageLoading(context);

      Future.delayed(Duration(seconds: 1), () {
        // TODO: async method should call and passing to result page via parameter
        final socialDataFacebook = Facebook(
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
            ]);

        final socialDataTwitter = Twitter(
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
            ]);

        final socialDataInstagram = Instagram(
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
            ]);
        final socialDataLinkedIn = LinkedIn(
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
            ]);

        final socialDataYoutube = Youtube(
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
            ]);

        final socialDataGmail = Gmail(
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
            ]);

        final socialDataFlickr = Flickr(
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
            ]);

        final socialDataPinterest = Pinterest(
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
            ]);

        final socialDataSoundcloud = Soundcloud(
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
            ]);

        final socialDataHi5 = Hi5(
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
            ]);

        final socialDataTumblr = Tumblr(
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
            ]);

        final List<dynamic> socialData = <dynamic>[
          socialDataFacebook,
          socialDataTwitter,
          socialDataInstagram,
          socialDataLinkedIn,
          socialDataYoutube,
          socialDataGmail,
          socialDataFlickr,
          socialDataPinterest,
          socialDataSoundcloud,
          socialDataHi5,
          socialDataTumblr
        ];

        SneakUtil.fillModelPageMap(
            socialDataFacebook, FacebookPage(socialDataFacebook));
        SneakUtil.fillModelPageMap(
            socialDataTwitter, TwitterPage(socialDataTwitter));
        SneakUtil.fillModelPageMap(
            socialDataInstagram, InstagramPage(socialDataInstagram));
        SneakUtil.fillModelPageMap(
            socialDataLinkedIn, LinkedInPage(socialDataLinkedIn));
        SneakUtil.fillModelPageMap(
            socialDataYoutube, YoutubePage(socialDataYoutube));
        SneakUtil.fillModelPageMap(socialDataGmail, GmailPage(socialDataGmail));
        SneakUtil.fillModelPageMap(
            socialDataFlickr, FlickrPage(socialDataFlickr));
        SneakUtil.fillModelPageMap(
            socialDataPinterest, PinterestPage(socialDataPinterest));
        SneakUtil.fillModelPageMap(
            socialDataSoundcloud, SoundcloudPage(socialDataSoundcloud));
        SneakUtil.fillModelPageMap(socialDataHi5, Hi5Page(socialDataHi5));
        SneakUtil.fillModelPageMap(
            socialDataTumblr, TumblrPage(socialDataTumblr));

        Navigator.of(context).pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => SocialMediaResultPage(socialData)));
      });
      //  Navigator.pop(context);
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

  /// Show page loading indicator
  showPageLoading(BuildContext context) {
    var loadingIndicator = new Center(child: CircularProgressIndicator());
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) => loadingIndicator);
  }
}
