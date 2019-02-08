import 'package:flutter/material.dart';
import 'package:sneakin/view/home/sneakHome.dart';
import 'package:sneakin/view/home/sneakSideMenu.dart';
import 'package:sneakin/view/twitter/twitter.dart';

void main() => runApp(SneakInApplication());

class SneakInApplication extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sneak In',
      home: SneakHomePage(),
      initialRoute: "/",
      routes: {
        "/sneakSideMenu": (context) => SneakSideMenuPage(),
        "/facebook": (context) => SneakHomePage(),
        "/twitter": (context) => TwitterPage(),
        "/instagram": (context) => SneakHomePage(),
        "/linkedIn": (context) => SneakHomePage(),
        "/youtube": (context) => SneakHomePage(),
        "/gmail": (context) => SneakHomePage(),
        "/flickr": (context) => SneakHomePage(),
        "/pinterest": (context) => SneakHomePage(),
        "/soundcloud": (context) => SneakHomePage(),
        "/mynet": (context) => SneakHomePage(),
        "/hi5": (context) => SneakHomePage(),
        "/tumblr": (context) => SneakHomePage()
      },
    );
  }
}
