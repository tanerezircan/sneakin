import 'dart:convert';

import 'package:sneakin/utility/interface/IEntity.dart';

class Company implements IEntity<Company> {
  final String id;
  final String name;
  final String catchPhrase;
  final String bs;

  const Company({this.id, this.name, this.catchPhrase, this.bs});

  @override
  Company getObjectFromJson(dynamic obj) {
    Company company;
    try {
      var jsonObj = json.decode(obj);
      company = new Company(
          id: jsonObj["id"],
          name: jsonObj["name"],
          catchPhrase: jsonObj["catchPhrase"],
          bs: jsonObj["bs"]);
    } catch (e) {
      throw Exception("Company json decode exception : " + e);
    }
    return company;
  }
}
