import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sneakin/model/Flickr.dart';
import 'package:sneakin/view/flickr/FlickrDetailPage.dart';

class FlickrPage extends StatelessWidget {
  const FlickrPage(this.flickr);
  final Flickr flickr;

  Widget _buildFlickr(BuildContext context, Flickr root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: Icon(
            MdiIcons.flickr,
            size: 32.0,
            color: Color.fromRGBO(244, 0, 131, 1),
          ),
          key: PageStorageKey<Flickr>(root),
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
              .map((flickr) => _buildFlickr(context, flickr))
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
    return _buildFlickr(context, flickr);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Flickr person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FlickrDetailPage(person: person)));
  }
}
