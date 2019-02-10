import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Hi5 implements IEntity<Hi5> {
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
  Hi5 getObjectFromJson(dynamic obj) {
    Hi5 hi = new Hi5();
    try {
      var jsonObj = json.decode(obj);
      hi.setUserId(jsonObj["userId"]);
      hi.setName(jsonObj["name"]);
      hi.setSurname(jsonObj["surname"]);
      hi.setAge(jsonObj["age"]);
      hi.setLocation(jsonObj["location"]);
      hi.setLinkId(jsonObj["linkId"]);
      hi.setImage(jsonObj["image"]);
      hi.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Hi5 json decode exception : " + e);
    }
    return hi;
  }
}
