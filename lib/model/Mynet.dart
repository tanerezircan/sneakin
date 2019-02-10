import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Mynet implements IEntity<Mynet> {
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
  Mynet getObjectFromJson(dynamic obj) {
    Mynet my = new Mynet();
    try {
      var jsonObj = json.decode(obj);
      my.setUserId(jsonObj["userId"]);
      my.setName(jsonObj["name"]);
      my.setSurname(jsonObj["surname"]);
      my.setAge(jsonObj["age"]);
      my.setLocation(jsonObj["location"]);
      my.setLinkId(jsonObj["linkId"]);
      my.setImage(jsonObj["image"]);
      my.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Mynet json decode exception : " + e);
    }
    return my;
  }
}
