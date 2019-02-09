import 'package:flutter/material.dart';
import 'package:sneakin/view/home/SneakSearchPage.dart';
import 'package:sneakin/view/home/SneakSideMenuPage.dart';

class SneakHomePage extends StatefulWidget {
  @override
  _SneakHomePageState createState() => _SneakHomePageState();
}

class _SneakHomePageState extends State<SneakHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Sneak In'))),
      drawer: SneakSideMenuPage(),
      body: SneakSearchPage(),
    );
  }
}
