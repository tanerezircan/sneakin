import 'package:flutter/material.dart';
import 'package:sneakin/model/Hi5.dart';
import 'package:sneakin/view/hi5/Hi5DetailPage.dart';

class Hi5Page extends StatelessWidget {
  const Hi5Page(this.hi5);
  final Hi5 hi5;

  Widget _buildHi5(BuildContext context, Hi5 root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: root.icon,
          key: PageStorageKey<Hi5>(root),
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
          children:
              root.children.map((hi5) => _buildHi5(context, hi5)).toList(),
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
    return _buildHi5(context, hi5);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Hi5 person) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Hi5DetailPage(person: person)));
  }
}
