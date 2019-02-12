import 'package:flutter/material.dart';
import 'package:sneakin/model/Soundcloud.dart';
import 'package:sneakin/view/sound_cloud/SoundcloudDetailPage.dart';

class SoundcloudPage extends StatelessWidget {
  const SoundcloudPage(this.soundcloud);
  final Soundcloud soundcloud;

  Widget _buildSoundcloud(BuildContext context, Soundcloud root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: root.icon,
          key: PageStorageKey<Soundcloud>(root),
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
              .map((soundcloud) => _buildSoundcloud(context, soundcloud))
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
    return _buildSoundcloud(context, soundcloud);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Soundcloud person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SoundcloudDetailPage(person: person)));
  }
}
