import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Instagram implements IEntity<Instagram> {
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
  Instagram getObjectFromJson(Object obj) {
    Instagram inst = new Instagram();
    try {
      var jsonObj = json.decode(obj);
      inst.setUserId(jsonObj["userId"]);
      inst.setName(jsonObj["name"]);
      inst.setSurname(jsonObj["surname"]);
      inst.setAge(jsonObj["age"]);
      inst.setLocation(jsonObj["location"]);
      inst.setLinkId(jsonObj["linkId"]);
      inst.setImage(jsonObj["image"]);
      inst.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Instagram json decode exception : " + e);
    }
    return inst;
  }
}
