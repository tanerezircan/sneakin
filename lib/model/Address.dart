import 'package:sneakin/model/Company.dart';
import 'package:sneakin/utility/interface/IEntity.dart';

class Address implements IEntity<Address> {
  String _id;
  String _street;
  String _suit; // Apartment
  String _city;
  String _zipcode;
  Geo _geo;
  String _phone;
  String _website;
  Company _company;

  String get getId => this._id;
  String get getStreet => this._street;
  String get getSuit => this._suit;
  String get getCity => this._city;
  String get getZipcode => this._zipcode;
  Geo get getGeo => this._geo;
  String get getPhone => this._phone;
  String get getWebsite => this._website;
  Company get getCompany => this._company;

  set setId(String id) => this._id = id;
  set setStreet(String street) => this._street = street;
  set setSuit(String suit) => this._suit = suit;
  set setCity(String city) => this._city = city;
  set setZipcode(String zipcode) => this._zipcode = zipcode;
  set setGeo(Geo geo) => this._geo = geo;
  set setPhone(String phone) => this._phone = phone;
  set setWebsite(String website) => this._website = website;
  set setCompany(Company company) => this._company = company;

  @override
  Address getObjectFromJson(obj) {
    // TODO: implement getObjectFromJson
    return null;
  }
}

class Geo implements IEntity<Geo> {
  String _id;
  String _lat; // Lattitude
  String _lng; //Longitute

  String get getId => this._id;
  String get getLat => this._lat;
  String get getLng => this._lng;

  set setId(String id) => this._id = id;
  set setLat(String lat) => this._lat = lat;
  set setLng(String lng) => this._lng = lng;

  @override
  Geo getObjectFromJson(obj) {
    // TODO: implement getObjectFromJson
    return null;
  }
}
