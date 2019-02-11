import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sneakin/model/Address.dart';
import 'package:sneakin/model/Company.dart';
import 'package:sneakin/utility/interface/IEntity.dart';

///  Author: Taner Ezircan
/// Date: 11.02.2019
class Youtube implements IEntity<Youtube> {
 final String id;
  final String userId;
  final String name;
  final String surname;
  final String username;
  final String email;
  final Address address; //there is Geo inside
  final Company company;
  final String linkId;
  final String phone;
  final Image image;
  final Image icon;
  final Color color;
  final int age;
  final String title;
  final List<Youtube> children;
  Youtube(
      {this.title = "SneakIn",
      this.id,
      this.userId,
      this.name,
      this.surname,
      this.username,
      this.email,
      this.address,
      this.company,
      this.linkId,
      this.phone,
      this.image,
      this.icon,
      this.color,
      this.age,
      this.children = const <Youtube>[]})
      : assert(title != null),
        assert(children != null);

  @override
  Youtube getObjectFromJson(dynamic obj) {
    Youtube fb;
    try {
      var jsonObj = json.decode(obj);
      fb = new Youtube(
          id: jsonObj["id"],
          userId: jsonObj["userId"],
          name: jsonObj["name"],
          surname: jsonObj["surname"],
          username: jsonObj["username"],
          email: jsonObj["email"],
          age: jsonObj["age"],
          address: jsonObj["address"],
          linkId: jsonObj["linkId"],
          image: Image.network(jsonObj["image"]),
          phone: jsonObj["phone"],
          color: jsonObj["color"],
          company: jsonObj["company"],
          title: jsonObj["title"]);
    } catch (e) {
      throw Exception("Youtube json decode exception : " + e);
    }
    return fb;
  }
}
