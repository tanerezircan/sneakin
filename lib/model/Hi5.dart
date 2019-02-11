import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sneakin/model/Address.dart';
import 'package:sneakin/model/Company.dart';
import 'package:sneakin/utility/interface/IEntity.dart';

///  Author: Taner Ezircan
/// Date: 11.02.2019
class Hi5 implements IEntity<Hi5> {
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
  final List<Hi5> children;
  Hi5(
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
      this.children = const <Hi5>[]})
      : assert(title != null),
        assert(children != null);

  @override
  Hi5 getObjectFromJson(dynamic obj) {
    Hi5 fb;
    try {
      var jsonObj = json.decode(obj);
      fb = new Hi5(
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
      throw Exception("Hi5 json decode exception : " + e);
    }
    return fb;
  }
}
