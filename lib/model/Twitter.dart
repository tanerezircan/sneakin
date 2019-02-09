import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Twitter implements IEntity<Twitter> {
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
  Twitter getObjectFromJson(Object obj) {
    Twitter tw = new Twitter();
    try {
      var jsonObj = json.decode(obj);
      tw.setUserId(jsonObj["userId"]);
      tw.setName(jsonObj["name"]);
      tw.setSurname(jsonObj["surname"]);
      tw.setAge(jsonObj["age"]);
      tw.setLocation(jsonObj["location"]);
      tw.setLinkId(jsonObj["linkId"]);
      tw.setImage(jsonObj["image"]);
      tw.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Twitter json decode exception : " + e);
    }
    return tw;
  }
}
