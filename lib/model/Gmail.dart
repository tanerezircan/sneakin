import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Gmail implements IEntity<Gmail> {
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
  Gmail getObjectFromJson(dynamic obj) {
    Gmail gm = new Gmail();
    try {
      var jsonObj = json.decode(obj);
      gm.setUserId(jsonObj["userId"]);
      gm.setName(jsonObj["name"]);
      gm.setSurname(jsonObj["surname"]);
      gm.setAge(jsonObj["age"]);
      gm.setLocation(jsonObj["location"]);
      gm.setLinkId(jsonObj["linkId"]);
      gm.setImage(jsonObj["image"]);
      gm.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Gmail json decode exception : " + e);
    }
    return gm;
  }
}
