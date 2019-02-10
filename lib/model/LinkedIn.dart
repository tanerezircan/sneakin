import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class LinkedIn implements IEntity<LinkedIn> {
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
  LinkedIn getObjectFromJson(dynamic obj) {
    LinkedIn lnk = new LinkedIn();
    try {
      var jsonObj = json.decode(obj);
      lnk.setUserId(jsonObj["userId"]);
      lnk.setName(jsonObj["name"]);
      lnk.setSurname(jsonObj["surname"]);
      lnk.setAge(jsonObj["age"]);
      lnk.setLocation(jsonObj["location"]);
      lnk.setLinkId(jsonObj["linkId"]);
      lnk.setImage(jsonObj["image"]);
      lnk.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("LinkedIn json decode exception : " + e);
    }
    return lnk;
  }
}
