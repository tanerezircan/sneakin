import 'package:flutter/material.dart';
import 'package:sneakin/model/LinkedIn.dart';
import 'package:sneakin/view/LinkedIn/LinkedInDetailPage.dart';

class LinkedInPage extends StatelessWidget {
  const LinkedInPage(this.linkedIn);
  final LinkedIn linkedIn;

  Widget _buildLinkedIn(BuildContext context, LinkedIn root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: root.icon,
          key: PageStorageKey<LinkedIn>(root),
          title: Center(
              child: Text(
            root.title,
            style: TextStyle(
                color: Color.fromRGBO(0, 119, 181, 1.0),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(color: Colors.amber),
                  BoxShadow(color: Colors.red),
                  BoxShadow(color: Colors.green)
                ]),
          )),
          children: root.children
              .map((linkedIn) => _buildLinkedIn(context, linkedIn))
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
    return _buildLinkedIn(context, linkedIn);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, LinkedIn person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LinkedInDetailPage(person: person)));
  }
}
