import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sneakin/utility/interface/IEntity.dart';

class Facebook implements IEntity<Facebook> {
  String userId;
  String name;
  String surname;
  int age;
  String location;
  String linkId;
  String phone;
  String image;
  Color color;
  final String title;
  final List<Facebook> children;
  Facebook(this.title, [this.children = const <Facebook>[]]);

  String get getUserId => this.userId;
  String get getName => this.name;
  String get getSurname => this.surname;
  int get getAge => this.age;
  String get getLocation => this.location;
  String get getLinkId => this.linkId;
  String get getPhone => this.phone;
  String get getImage => this.image;
  String get getTitle => this.title;
  Color get getColor => this.color;
  List get getChildren => this.children;

  set setUserId(String userId) => this.userId = userId;
  set setName(String name) => this.name = name;
  set setSurname(String surname) => this.surname = surname;
  set setAge(int age) => this.age = age;
  set setLocation(String location) => this.location = location;
  set setLinkId(String linkId) => this.linkId = linkId;
  set setPhone(String phone) => this.phone = phone;
  set setImage(String image) => this.image = image;
  set setColor(Color color) => this.color = color;

  @override
  Facebook getObjectFromJson(dynamic obj) {
    Facebook fb = new Facebook("Facebook");
    try {
      var jsonObj = json.decode(obj);
      fb.setUserId = jsonObj["userId"];
      fb.setName = jsonObj["name"];
      fb.setSurname = jsonObj["surname"];
      fb.setAge = jsonObj["age"];
      fb.setLocation = jsonObj["location"];
      fb.setLinkId = jsonObj["linkId"];
      fb.setImage = jsonObj["image"];
      fb.setPhone = jsonObj["phone"];
      fb.setColor = jsonObj["color"];
    } catch (e) {
      throw Exception("Facebook json decode exception : " + e);
    }
    return fb;
  }
}
