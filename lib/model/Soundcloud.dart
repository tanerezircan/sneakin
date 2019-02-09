import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Soundcloud implements IEntity<Soundcloud> {
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
  Soundcloud getObjectFromJson(Object obj) {
    Soundcloud sc = new Soundcloud();
    try {
      var jsonObj = json.decode(obj);
      sc.setUserId(jsonObj["userId"]);
      sc.setName(jsonObj["name"]);
      sc.setSurname(jsonObj["surname"]);
      sc.setAge(jsonObj["age"]);
      sc.setLocation(jsonObj["location"]);
      sc.setLinkId(jsonObj["linkId"]);
      sc.setImage(jsonObj["image"]);
      sc.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Soundcloud json decode exception : " + e);
    }
    return sc;
  }
}
