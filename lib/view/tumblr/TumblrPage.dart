import 'package:flutter/material.dart';
import 'package:sneakin/model/Tumblr.dart';
import 'package:sneakin/view/tumblr/TumblrDetailPage.dart';

class TumblrPage extends StatelessWidget {
  const TumblrPage(this.tumblr);
  final Tumblr tumblr;

  Widget _buildTumblr(BuildContext context, Tumblr root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: root.icon,
          key: PageStorageKey<Tumblr>(root),
          title: Center(
              child: Text(
            root.title,
            
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(color: Colors.amber),
                  BoxShadow(color: Colors.red),
                  BoxShadow(color: Colors.green)
                ]),
          )),
          children: root.children
              .map((tumblr) => _buildTumblr(context, tumblr))
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
    return _buildTumblr(context, tumblr);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Tumblr person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TumblrDetailPage(person: person)));
  }
}