import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:ui_100_day_5/common/service/file_storage.dart';
import 'package:ui_100_day_5/map/models/landmark_info.dart';

@singleton
class LandmarkService {
  final FileStorage fileStorage;

  LandmarkService(this.fileStorage);

  Future<List<LandmarkInfo>> getLandmarkInfo() async {
    print('getLandmarkInfo is called');
    await Future.delayed(Duration(milliseconds: 1000));
    String jsonString;
    try {
      jsonString = await fileStorage.read('data.json');
    } catch (e) {
      print(e);
      jsonString = await rootBundle.loadString('./assets/json/data.json');
    }

    final jsonArray = json.decode(jsonString);
    return (jsonArray as List).map((e) => LandmarkInfo.fromJson(e)).toList();
  }
}
