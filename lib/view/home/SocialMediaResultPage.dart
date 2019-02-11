import 'package:flutter/material.dart';
import 'package:sneakin/model/Facebook.dart';
import 'package:sneakin/view/facebook/FacebookPage.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/bezier_bounce_footer.dart';
import 'package:flutter_easyrefresh/bezier_hour_glass_header.dart';

class SocialMediaResultPage extends StatefulWidget {
  @override
  _SocialMediaResultPageState createState() => _SocialMediaResultPageState();
}

final List<Facebook> data = <Facebook>[
  Facebook("Facebook", <Facebook>[
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
  List<Facebook> _data = data;

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
                  // color: Colors.lightBlue[50],
                  elevation: 30.0,
                  margin: EdgeInsets.all(1.0),
                  child: FacebookPage(data[index]),
                ),
              );
            },
            itemCount: data.length,
            controller: _scrollController,
          ),
          onRefresh: () async {
            await new Future.delayed(const Duration(seconds: 1), () {
              if (mounted) return;

              setState(() {
                data.clear();
                data.addAll(_data);
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
