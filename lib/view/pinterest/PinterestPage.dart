import 'package:flutter/material.dart';
import 'package:sneakin/model/Pinterest.dart';
import 'package:sneakin/view/pinterest/PinterestDetailPage.dart';

class PinterestPage extends StatelessWidget {
  const PinterestPage(this.pinterest);
  final Pinterest pinterest;

  Widget _buildPinterest(BuildContext context, Pinterest root) {
    // parent widget
    if (root.children.isNotEmpty)
      return Container(
        color: ThemeData.light().canvasColor,
        child: ExpansionTile(
          trailing: Text("Detail"),
          leading: root.icon,
          key: PageStorageKey<Pinterest>(root),
          title: Center(
              child: Text(
            root.title,
            style: TextStyle(
                color: Color.fromRGBO(189, 8, 28, 1.0),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(color: Colors.amber),
                  BoxShadow(color: Colors.red),
                  BoxShadow(color: Colors.green)
                ]),
          )),
          children: root.children
              .map((pinterest) => _buildPinterest(context, pinterest))
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
    return _buildPinterest(context, pinterest);
  }

  // Navigate to Detail Page
  void gotoDetail(BuildContext context, Pinterest person) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PinterestDetailPage(person: person)));
  }
}
