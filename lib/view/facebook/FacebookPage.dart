import 'package:flutter/material.dart';
import 'package:sneakin/model/Facebook.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage(this.facebook);
  final Facebook facebook;

  Widget _buildFacebook(BuildContext context, Facebook root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: root.icon,
          key: PageStorageKey<Facebook>(root),
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
              .map((facebook) => _buildFacebook(context, facebook))
              .toList(),
        ),
      );
    // child widget
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/facebookDetail"),
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
    return _buildFacebook(context, facebook);
  }
}
