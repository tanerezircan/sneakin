class SneakUtil {
  
  static String convertTurkishCharacter(String data) {
    data = data.replaceAll("İ", "i");
    data = data.replaceAll("I", "ı");
    data = data.replaceAll("Ş", "ş");
    data = data.replaceAll("Ğ", "ğ");
    data = data.replaceAll("Ç", "ç");
    return data;
  }
}
