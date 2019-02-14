import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sneakin/model/Youtube.dart';
import 'package:sneakin/view/youtube/YoutubeDetailPage.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage(this.youtube);
  final Youtube youtube;

  Widget _buildYoutube(BuildContext context, Youtube root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: Icon(
            MdiIcons.youtube,
            size: 32.0,
            color: Color.fromRGBO(205, 32, 31, 1),
          ),
          key: PageStorageKey<Youtube>(root),
          title: Center(
              child: Text(
            root.title,
            style: TextStyle(
                color: Colors.blueAccent,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(color: Colors.amber),
                  BoxShadow(color: Colors.red),
                  BoxShadow(color: Colors.green)
                ]),
          )),
          children: root.children
              .map((youtube) => _buildYoutube(context, youtube))
              .toList(),
        ),
      );
    // child widget
    return GestureDetector(
      onTap: () => gotoDetail(context, root),
      child: Column(
        children: <Widget>[
          Divider(),
          ListTile(
            trailing: Text("Detail"),
            leading: root.image,
            title: Center(
                child: Text(
              root.title,
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              overflow: TextOverflow.clip,
            )),
            subtitle: Center(
                child: Text(
              root.title,
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            )),
            isThreeLine: false, // listede aralarda bosluk olmasi icin
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildYoutube(context, youtube);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Youtube person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => YoutubeDetailPage(person: person)));
  }
}
