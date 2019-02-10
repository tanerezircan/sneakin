import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Pinterest implements IEntity<Pinterest> {
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
  Pinterest getObjectFromJson(dynamic obj) {
    Pinterest pn = new Pinterest();
    try {
      var jsonObj = json.decode(obj);
      pn.setUserId(jsonObj["userId"]);
      pn.setName(jsonObj["name"]);
      pn.setSurname(jsonObj["surname"]);
      pn.setAge(jsonObj["age"]);
      pn.setLocation(jsonObj["location"]);
      pn.setLinkId(jsonObj["linkId"]);
      pn.setImage(jsonObj["image"]);
      pn.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Pinterest json decode exception : " + e);
    }
    return pn;
  }
}
