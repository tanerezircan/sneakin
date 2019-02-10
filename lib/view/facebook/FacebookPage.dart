import 'package:flutter/material.dart';
import 'package:sneakin/model/Facebook.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage(this.facebook);
  final Facebook facebook;

  Widget _buildFacebook(BuildContext context, Facebook root) {
    if (root.children.isEmpty)
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/facebookDetail"),
        child: Column(
          children: <Widget>[
            Divider(),
            ListTile(
              leading: Image.asset("assets/images/aglak.png"),
              title: Center(
                  child: Text(
                root.getTitle,
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                overflow: TextOverflow.clip,
              )),
              subtitle: Center(
                  child: Text(
                root.getTitle,
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              )),
              isThreeLine: false, // listede aralarda bosluk olmasi icin
            ),
          ],
        ),
      );
    return Container(
      color: ThemeData.light().canvasColor,
      child: ExpansionTile(
        leading: Image.asset("assets/icons/Icon-hdpi.png"),
        key: PageStorageKey<Facebook>(root),
        title: Center(
            child: Text(
          root.title,
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        )),
        children: root.children
            .map((facebook) => _buildFacebook(context, facebook))
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildFacebook(context, facebook);
  }
}
