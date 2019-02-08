import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:sneakin/utility/interface/IHttpService.dart';

class TwitterService implements IHttpService {
  @override
  Future deleteRequest(dynamic url, String id) {
    // TODO: implement deleteRequest
    return null;
  }

  @override
  Future getRequest(dynamic url, [headers]) async {
    var response = await http.get(url);
    return response;
  }

  @override
  Future patchRequest(dynamic url, partialBody) {
    // TODO: implement patchRequest
    return null;
  }

  @override
  Future postRequest(dynamic url, body) {
    // TODO: implement postRequest
    return null;
  }
}
