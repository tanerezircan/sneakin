import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Youtube implements IEntity<Youtube> {
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
  Youtube getObjectFromJson(Object obj) {
    Youtube yt = new Youtube();
    try {
      var jsonObj = json.decode(obj);
      yt.setUserId(jsonObj["userId"]);
      yt.setName(jsonObj["name"]);
      yt.setSurname(jsonObj["surname"]);
      yt.setAge(jsonObj["age"]);
      yt.setLocation(jsonObj["location"]);
      yt.setLinkId(jsonObj["linkId"]);
      yt.setImage(jsonObj["image"]);
      yt.setPhone(jsonObj["phone"]);
    } catch (e) {
      throw Exception("Youtube json decode exception : " + e);
    }
    return yt;
  }
}
