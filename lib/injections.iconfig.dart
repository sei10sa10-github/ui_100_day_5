// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:ui_100_day_5/common/service/file_storage.dart';
import 'package:ui_100_day_5/map/service/landmark_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  //Eager singletons must be registered in the right order
  g.registerSingleton<FileStorage>(FileStorage());
  g.registerSingleton<LandmarkService>(LandmarkService(g<FileStorage>()));
}
