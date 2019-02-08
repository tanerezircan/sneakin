abstract class IHttpService {
  Future getRequest(dynamic url, [var headers]);
  Future postRequest(dynamic url, var body);
  Future patchRequest(dynamic url, var partialBody);
  Future deleteRequest(dynamic url, String id);
}
