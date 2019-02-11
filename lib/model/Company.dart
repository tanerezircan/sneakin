import 'package:sneakin/utility/interface/IEntity.dart';

class Company implements IEntity<Company> {
  String _id;
  String _name;
  String _catchPhrase;
  String _bs;

  get getId =>this._id;
  get getName =>this._name;
  get getCatchPhrase =>this._catchPhrase;
  get getBs =>this._bs;

  set setId(String id) => this._id = id;
  set setName(String name) => this._name = name;
  set setCathPhrase(String catchPhrase)=> this._catchPhrase = catchPhrase;


  @override
  Company getObjectFromJson(obj) {
    // TODO: implement getObjectFromJson
    return null;
  }
}
