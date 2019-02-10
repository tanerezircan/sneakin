import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Flickr implements IEntity<Flickr> {
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
  Flickr getObjectFromJson(dynamic obj) {
    Flickr fl = new Flickr();
    try {
      var jsonObj = json.decode(obj);
      fl.setUserId(jsonObj["userId"]);
      fl.setName(jsonObj["name"]);
      fl.setSurname(jsonObj["surname"]);
      fl.setAge(jsonObj["age"]);
      fl.setLocation(jsonObj["location"]);
      fl.setLinkId(jsonObj["linkId"]);
      fl.setImage(jsonObj["image"]);
      fl.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Flickr json decode exception : " + e);
    }
    return fl;
  }
}
