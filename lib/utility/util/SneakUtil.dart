import 'package:sneakin/utility/util/ModelPage.dart';

class SneakUtil {
  static String convertTurkishCharacter(String data) {
    data = data.replaceAll("İ", "i");
    data = data.replaceAll("I", "ı");
    data = data.replaceAll("Ş", "ş");
    data = data.replaceAll("Ğ", "ğ");
    data = data.replaceAll("Ç", "ç");
    return data;
  }

  /// filling the map for Model-Page pairing in the SocialMediaResultPage ListView
  /// this map is calling in the Main method
  static void fillModelPageMap(dynamic model, dynamic page) {
    ModelPage modelPage = new ModelPage();
    modelPage.addModelPageMap(model, page);
  }

  /// getting the map value from Model-Page map for the SocialMediaResultPage ListView
  static dynamic getPageFromModelMap(dynamic param) {
    ModelPage modelPage = new ModelPage();
    return modelPage.getModelPageMap(param);
  }
}
