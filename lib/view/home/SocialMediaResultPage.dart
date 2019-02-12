import 'package:flutter/material.dart';
import 'package:sneakin/utility/util/SneakUtil.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/bezier_bounce_footer.dart';
import 'package:flutter_easyrefresh/bezier_hour_glass_header.dart';

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
                      ? SneakUtil.getPageFromModelMap(
                          resultList[index])
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
