import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:ui_100_day_5/injections.dart';
import 'package:ui_100_day_5/map/controller/landmark_info_controller.dart';
import 'package:ui_100_day_5/map/models/map_state.dart';
import 'package:ui_100_day_5/map/service/landmark_service.dart';
import 'package:ui_100_day_5/map/view/map_view.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Provider<LandmarkService>(
        create: (_) => getIt<LandmarkService>(),
        child: StateNotifierProvider<LandmarkInfoController, MapState>(
          create: (_) => LandmarkInfoController(MapState()),
          child: MapView(),
        ),
      ),
    );
  }
}