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
  final List<dynamic> resultList;

  SocialMediaResultPage(this.resultList);
  @override
  _SocialMediaResultPageState createState() =>
      _SocialMediaResultPageState(resultList);
}

class _SocialMediaResultPageState extends State<SocialMediaResultPage> {
  final List<dynamic> resultList;

  _SocialMediaResultPageState(this.resultList);

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
                  child: (resultList != null && resultList.length > 0)
                      ? (resultList[index].title == "Facebook"
                          ? FacebookPage(resultList[index])
                          : (resultList[index].title == "Twitter"
                              ? TwitterPage(resultList[index])
                              : (resultList[index].title == "Instagram"
                                  ? InstagramPage(resultList[index])
                                  : (resultList[index].title == "Youtube"
                                      ? YoutubePage(resultList[index])
                                      : (resultList[index].title == "Gmail"
                                          ? GmailPage(resultList[index])
                                          : (resultList[index].title == "LinkedIn"
                                              ? LinkedInPage(resultList[index])
                                              : (resultList[index].title == "Flickr"
                                                  ? FlickrPage(
                                                      resultList[index])
                                                  : (resultList[index].title ==
                                                          "Pinterest"
                                                      ? PinterestPage(
                                                          resultList[index])
                                                      : (resultList[index].title ==
                                                              "Soundcloud"
                                                          ? SoundcloudPage(
                                                              resultList[index])
                                                          : (resultList[index]
                                                                      .title ==
                                                                  "Hi5"
                                                              ? Hi5Page(
                                                                  resultList[
                                                                      index])
                                                              : (resultList[index]
                                                                          .title ==
                                                                      "Tumblr"
                                                                  ? TumblrPage(
                                                                      resultList[index])
                                                                  : null)))))))))))
                      : Container(
                          child: Text("No Result Data"),
                        ),
                ),
              );
            },
            itemCount: resultList.length,
            controller: _scrollController,
          ),
          onRefresh: () async {
            await new Future.delayed(const Duration(seconds: 1), () {
              if (mounted) return;

              setState(() {
                resultList.clear();
                resultList.addAll(resultList);
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
