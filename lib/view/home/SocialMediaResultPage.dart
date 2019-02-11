import 'package:flutter/material.dart';
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
import 'package:sneakin/view/LinkedIn/LinkedInPage.dart';
import 'package:sneakin/view/facebook/FacebookPage.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/bezier_bounce_footer.dart';
import 'package:flutter_easyrefresh/bezier_hour_glass_header.dart';
import 'package:sneakin/view/flickr/FlickrPage.dart';
import 'package:sneakin/view/gmail/GmailPage.dart';
import 'package:sneakin/view/hi5/Hi5Page.dart';
import 'package:sneakin/view/instagram/InstagramPage.dart';
import 'package:sneakin/view/pinterest/PinterestPage.dart';
import 'package:sneakin/view/sound_cloud/SoundcloudPage.dart';
import 'package:sneakin/view/tumblr/TumblrPage.dart';
import 'package:sneakin/view/twitter/TwitterPage.dart';
import 'package:sneakin/view/youtube/YoutubePage.dart';

class SocialMediaResultPage extends StatefulWidget {
  @override
  _SocialMediaResultPageState createState() => _SocialMediaResultPageState();
}

final List<dynamic> socialData = <dynamic>[
  Facebook(
      title: "Facebook",
      icon: Image.asset("assets/icons/facebook.png"),
      children: <Facebook>[
        Facebook(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Facebook(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Facebook(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Facebook(
            title: "Taners", image: Image.asset("assets/images/taners.png")),
        Facebook(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Facebook(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Facebook(
            title: "TnR TnR",
            image: Image.asset("assets/images/emre_taners.png")),
        Facebook(
            title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Facebook(),
      ]),
  Twitter(
      title: "Twitter",
      icon: Image.asset("assets/icons/twitter.png"),
      children: <Twitter>[
        Twitter(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Twitter(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Twitter(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Twitter(
            title: "Taners", image: Image.asset("assets/images/taners.png")),
        Twitter(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Twitter(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Twitter(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Twitter(
            title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Twitter(),
      ]),
  Instagram(
      title: "Instagram",
      icon: Image.asset("assets/icons/instagram.png"),
      children: <Instagram>[
        Instagram(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Instagram(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Instagram(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Instagram(
            title: "Taners", image: Image.asset("assets/images/taners.png")),
        Instagram(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Instagram(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Instagram(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Instagram(
            title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Instagram(),
      ]),
  LinkedIn(
      title: "LinkedIn",
      icon: Image.asset("assets/icons/linkedin.png"),
      children: <LinkedIn>[
        LinkedIn(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        LinkedIn(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        LinkedIn(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        LinkedIn(
            title: "Taners", image: Image.asset("assets/images/taners.png")),
        LinkedIn(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        LinkedIn(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        LinkedIn(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        LinkedIn(
            title: "Jineko", image: Image.asset("assets/images/taners.png")),
        LinkedIn(),
      ]),
  Youtube(
      title: "Youtube",
      icon: Image.asset("assets/icons/youtube.png"),
      children: <Youtube>[
        Youtube(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Youtube(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Youtube(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Youtube(
            title: "Taners", image: Image.asset("assets/images/taners.png")),
        Youtube(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Youtube(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Youtube(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Youtube(
            title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Youtube(),
      ]),
  Gmail(
      title: "Gmail",
      icon: Image.asset("assets/icons/gmail.png"),
      children: <Gmail>[
        Gmail(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Gmail(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Gmail(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Gmail(title: "Taners", image: Image.asset("assets/images/taners.png")),
        Gmail(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Gmail(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Gmail(title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Gmail(title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Gmail(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Gmail(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Gmail(title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Gmail(title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Gmail(),
      ]),
  Flickr(
      title: "Flickr",
      icon: Image.asset("assets/icons/flickr.png"),
      children: <Flickr>[
        Flickr(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Flickr(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Flickr(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Flickr(title: "Taners", image: Image.asset("assets/images/taners.png")),
        Flickr(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Flickr(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Flickr(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Flickr(title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Flickr(),
      ]),
  Pinterest(
      title: "Pinterest",
      icon: Image.asset("assets/icons/pinterest.png"),
      children: <Pinterest>[
        Pinterest(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Pinterest(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Pinterest(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Pinterest(
            title: "Taners", image: Image.asset("assets/images/taners.png")),
        Pinterest(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Pinterest(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Pinterest(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Pinterest(
            title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Pinterest(),
      ]),
  Soundcloud(
      title: "Soundcloud",
      icon: Image.asset("assets/icons/soundcloud.png"),
      children: <Soundcloud>[
        Soundcloud(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Soundcloud(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Soundcloud(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Soundcloud(
            title: "Taners", image: Image.asset("assets/images/taners.png")),
        Soundcloud(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Soundcloud(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Soundcloud(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Soundcloud(
            title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Soundcloud(),
      ]),
  Hi5(title: "Hi5", icon: Image.asset("assets/icons/hi5.png"), children: <Hi5>[
    Hi5(
        title: "Taner Ezircan",
        image: Image.asset("assets/images/taner_ezircan.png")),
    Hi5(
        title: "Emre Taners",
        image: Image.asset("assets/images/emre_taners.png")),
    Hi5(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
    Hi5(title: "Taners", image: Image.asset("assets/images/taners.png")),
    Hi5(
        title: "Taners Ezircans",
        image: Image.asset("assets/images/taners.png")),
    Hi5(title: "TeNeRe TeNeRe", image: Image.asset("assets/images/taners.png")),
    Hi5(title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
    Hi5(title: "Jineko", image: Image.asset("assets/images/taners.png")),
    Hi5(),
  ]),
  Tumblr(
      title: "Tumblr",
      icon: Image.asset("assets/icons/tumblr.png"),
      children: <Tumblr>[
        Tumblr(
            title: "Taner Ezircan",
            image: Image.asset("assets/images/taner_ezircan.png")),
        Tumblr(
            title: "Emre Taners",
            image: Image.asset("assets/images/emre_taners.png")),
        Tumblr(title: "Ezgi", image: Image.asset("assets/images/ezgi.png")),
        Tumblr(title: "Taners", image: Image.asset("assets/images/taners.png")),
        Tumblr(
            title: "Taners Ezircans",
            image: Image.asset("assets/images/taners.png")),
        Tumblr(
            title: "TeNeRe TeNeRe",
            image: Image.asset("assets/images/taners.png")),
        Tumblr(
            title: "TnR TnR", image: Image.asset("assets/images/taners.png")),
        Tumblr(title: "Jineko", image: Image.asset("assets/images/taners.png")),
        Tumblr(),
      ]),
];

class _SocialMediaResultPageState extends State<SocialMediaResultPage> {
  ScrollController _scrollController = new ScrollController();
  GlobalKey<EasyRefreshState> _refreshState = new GlobalKey<EasyRefreshState>();
  GlobalKey<RefreshHeaderState> _refreshHeaderState =
      new GlobalKey<RefreshHeaderState>();
  GlobalKey<RefreshFooterState> _refreshFooterState =
      new GlobalKey<RefreshFooterState>();

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
        body: EasyRefresh(
          key: _refreshState,
          refreshHeader: BezierHourGlassHeader(
            key: _refreshHeaderState,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          refreshFooter: BezierBounceFooter(
            key: _refreshFooterState,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(top: 2.0),
                child: Card(
                  elevation: 30.0,
                  margin: EdgeInsets.all(1.0),
                  child: socialData[index].title == "Facebook"
                      ? FacebookPage(socialData[index])
                      : (socialData[index].title == "Twitter"
                          ? TwitterPage(socialData[index])
                          : (socialData[index].title == "Instagram"
                              ? InstagramPage(socialData[index])
                              : (socialData[index].title == "Youtube"
                                  ? YoutubePage(socialData[index])
                                  : (socialData[index].title == "Gmail"
                                      ? GmailPage(socialData[index])
                                      : (socialData[index].title == "LinkedIn"
                                          ? LinkedInPage(socialData[index])
                                          : (socialData[index].title == "Flickr"
                                              ? FlickrPage(socialData[index])
                                              : (socialData[index].title ==
                                                      "Pinterest"
                                                  ? PinterestPage(
                                                      socialData[index])
                                                  : (socialData[index].title ==
                                                          "Soundcloud"
                                                      ? SoundcloudPage(
                                                          socialData[index])
                                                      : (socialData[index].title ==
                                                              "Hi5"
                                                          ? Hi5Page(
                                                              socialData[index])
                                                          : (socialData[index]
                                                                      .title ==
                                                                  "Tumblr"
                                                              ? TumblrPage(
                                                                  socialData[
                                                                      index])
                                                              : null)))))))))),
                ),
              );
            },
            itemCount: socialData.length,
            controller: _scrollController,
          ),
          onRefresh: () async {
            await new Future.delayed(const Duration(seconds: 1), () {
              if (mounted) return;

              setState(() {
                socialData.clear();
                socialData.addAll(socialData);
              });
            });
          },
          loadMore: () async {
            await new Future.delayed(const Duration(seconds: 1), () {
              // TODO: asagidan yukariya yapinca takili kaliyor, incelenmeli
              /*
               if (data.length < 5) {
                if (!mounted) return;
              }

              setState(() {
                data.addAll(_data);
              }); */
            });
          },
        ));
  }
}
