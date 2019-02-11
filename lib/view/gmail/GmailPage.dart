import 'package:flutter/material.dart';
import 'package:sneakin/model/Gmail.dart';

class GmailPage extends StatelessWidget {
  const GmailPage(this.gmail);
  final Gmail gmail;

  Widget _buildGmail(BuildContext context, Gmail root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: root.icon,
          key: PageStorageKey<Gmail>(root),
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
              .map((gmail) => _buildGmail(context, gmail))
              .toList(),
        ),
      );
    // child widget
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/gmailDetail"),
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
    return _buildGmail(context, gmail);
  }
}
