import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Facebook implements IEntity<Facebook> {
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
  Facebook getObjectFromJson(Object obj) {
    Facebook fb = new Facebook();
    try {
      var jsonObj = json.decode(obj);
      fb.setUserId(jsonObj["userId"]);
      fb.setName(jsonObj["name"]);
      fb.setSurname(jsonObj["surname"]);
      fb.setAge(jsonObj["age"]);
      fb.setLocation(jsonObj["location"]);
      fb.setLinkId(jsonObj["linkId"]);
      fb.setImage(jsonObj["image"]);
      fb.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Facebook json decode exception : " + e);
    }
    return fb;
  }
}
