import 'dart:convert';

import 'package:sneakin/model/Company.dart';
import 'package:sneakin/utility/interface/IEntity.dart';

class Address implements IEntity<Address> {
  final String id;
  final String street;
  final String suit; // Apartment
  final String city;
  final String zipcode;
  final Geo geo;
  final String phone;
  final String website;
  final Company company;

  const Address(
      {this.id,
      this.street,
      this.suit,
      this.city,
      this.zipcode,
      this.geo,
      this.phone,
      this.website,
      this.company});

  @override
  Address getObjectFromJson(obj) {
    Address address;
    try {
      var jsonObj = json.decode(obj);
      address = new Address(
          id: jsonObj["id"],
          street: jsonObj["street"],
          suit: jsonObj["suit"],
          city: jsonObj["city"],
          zipcode: jsonObj["zipcode"],
          geo: jsonObj["geo"],
          phone: jsonObj["phone"],
          website: jsonObj["website"],
          company: jsonObj["company"]);
    } catch (e) {
      throw Exception("Address json decode exception : " + e);
    }
    return address;
  }
}

class Geo implements IEntity<Geo> {
  final String id;
  final String lat; // Lattitude
  final String lng; //Longitute

  const Geo({this.id, this.lat, this.lng});

  @override
  Geo getObjectFromJson(obj) {
    Geo geo;
    try {
      var jsonObj = json.decode(obj);
      geo =
          new Geo(id: jsonObj["id"], lat: jsonObj["lat"], lng: jsonObj["lng"]);
    } catch (e) {
      throw Exception("Facebook json decode exception : " + e);
    }
    return geo;
  }
}
