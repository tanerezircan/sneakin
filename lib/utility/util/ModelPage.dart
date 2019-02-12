import 'package:flutter/material.dart';

/// Class created for Model-Page pairing that showing in the SocialMediaResultPage ListView
class ModelPage {
  static final ModelPage _singletonModelPage = new ModelPage._internal();
  Map<dynamic, dynamic> modelPageMap;

  factory ModelPage() {
    return _singletonModelPage;
  }
  ModelPage._internal();

  void addModelPageMap(dynamic model, dynamic page) {
    if (modelPageMap == null || modelPageMap.isEmpty) {
      modelPageMap = new Map<dynamic, Widget>();
    }
    modelPageMap[model] = page;
  }

  dynamic getModelPageMap(dynamic model) {
    if (modelPageMap != null && modelPageMap.isNotEmpty) {
      return modelPageMap[model];
    }
    return null;
  }
}
