import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sneakin/model/Twitter.dart';
import 'package:sneakin/view/twitter/TwitterDetailPage.dart';

class TwitterPage extends StatelessWidget {
  const TwitterPage(this.twitter);
  final Twitter twitter;

  Widget _buildTwitter(BuildContext context, Twitter root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: Icon(
            MdiIcons.twitter,
            size: 32.0,
            color: Color.fromRGBO(29, 161, 242, 1),
          ),
          key: PageStorageKey<Twitter>(root),
          title: Center(
              child: Text(
            root.title,
            style: TextStyle(
                color: Colors.black87,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(color: Colors.amber),
                  BoxShadow(color: Colors.red),
                  BoxShadow(color: Colors.green)
                ]),
          )),
          children: root.children
              .map((twitter) => _buildTwitter(context, twitter))
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
    return _buildTwitter(context, twitter);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Twitter person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TwitterDetailPage(person: person)));
  }
}
