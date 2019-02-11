import 'package:flutter/material.dart';
import 'package:sneakin/model/Flickr.dart';

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
          leading: root.icon,
          key: PageStorageKey<Flickr>(root),
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
              .map((flickr) => _buildFlickr(context, flickr))
              .toList(),
        ),
      );
    // child widget
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/flickrDetail"),
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
}