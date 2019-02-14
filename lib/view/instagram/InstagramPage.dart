import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sneakin/model/Instagram.dart';
import 'package:sneakin/view/instagram/InstagramDetailPage.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage(this.instagram);
  final Instagram instagram;

  Widget _buildInstagram(BuildContext context, Instagram root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: Icon(
            MdiIcons.instagram,
            size: 32.0,
            color: Color.fromRGBO(63, 114, 155, 1),
          ),
          key: PageStorageKey<Instagram>(root),
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
              .map((instagram) => _buildInstagram(context, instagram))
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
    return _buildInstagram(context, instagram);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Instagram person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => InstagramDetailPage(person: person)));
  }
}
