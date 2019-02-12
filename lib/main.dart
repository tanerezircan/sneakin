import 'package:flutter/material.dart';
import 'package:sneakin/view/LinkedIn/LinkedInDetailPage.dart';
import 'package:sneakin/view/facebook/FacebookDetailPage.dart';
import 'package:sneakin/view/flickr/FlickrDetailPage.dart';
import 'package:sneakin/view/gmail/GmailDetailPage.dart';
import 'package:sneakin/view/hi5/Hi5DetailPage.dart';
import 'package:sneakin/view/home/SneakHomePage.dart';
import 'package:sneakin/view/home/SneakSideMenuPage.dart';
import 'package:sneakin/view/instagram/InstagramDetailPage.dart';
import 'package:sneakin/view/pinterest/PinterestDetailPage.dart';
import 'package:sneakin/view/sound_cloud/SoundcloudDetailPage.dart';
import 'package:sneakin/view/tumblr/TumblrDetailPage.dart';
import 'package:sneakin/view/twitter/TwitterDetailPage.dart';
import 'package:sneakin/view/youtube/YoutubeDetailPage.dart';

void main() => runApp(SneakInApplication());

class SneakInApplication extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sneak In',
      home: SneakHomePage(),
      initialRoute: "/",
      routes: {
        "/sneakSideMenu": (context) => SneakSideMenuPage(),
        "/facebookDetail": (context) => FacebookDetailPage(),
        "/twitterDetail": (context) => TwitterDetailPage(),
        "/instagramDetail": (context) => InstagramDetailPage(),
        "/linkedInDetail": (context) => LinkedInDetailPage(),
        "/youtubeDetail": (context) => YoutubeDetailPage(),
        "/gmailDetail": (context) => GmailDetailPage(),
        "/flickrDetail": (context) => FlickrDetailPage(),
        "/pinterestDetail": (context) => PinterestDetailPage(),
        "/soundcloudDetail": (context) => SoundcloudDetailPage(),
        "/hi5Detail": (context) => Hi5DetailPage(),
        "/tumblrDetail": (context) => TumblrDetailPage()
      },
    );
  }
}
