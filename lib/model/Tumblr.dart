import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Tumblr implements IEntity<Tumblr> {
  String userId;
  String name;
  String surname;
  int age;
  dynamic location;
  String linkId;
  String phone;
  dynamic image;

  get getUserId => this.userId;
  get getName => this.name;
  get getSurname => this.surname;
  get getAge => this.age;
  get getLocation => this.location;
  get getLinkId => this.linkId;
  get getPhone => this.phone;
  get getImage => this.image;

  void setUserId(String userId) {
    this.userId = userId;
  }

  void setName(String name) {
    this.name = name;
  }

  void setSurname(String surname) {
    this.surname = surname;
  }

  void setAge(int age) {
    this.age = age;
  }

  void setLocation(dynamic location) {
    this.location = location;
  }

  void setLinkId(String linkId) {
    this.linkId = linkId;
  }

  void setPhone(String phone) {
    this.phone = phone;
  }

  void setImage(dynamic image) {
    this.image = image;
  }

  @override
  Tumblr getObjectFromJson(Object obj) {
    Tumblr tb = new Tumblr();
    try {
      var jsonObj = json.decode(obj);
      tb.setUserId(jsonObj["userId"]);
      tb.setName(jsonObj["name"]);
      tb.setSurname(jsonObj["surname"]);
      tb.setAge(jsonObj["age"]);
      tb.setLocation(jsonObj["location"]);
      tb.setLinkId(jsonObj["linkId"]);
      tb.setImage(jsonObj["image"]);
      tb.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Tumblr json decode exception : " + e);
    }
    return tb;
  }
}
