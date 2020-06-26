
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_100_day_5/map/models/landmark_info.dart';

part 'map_state.freezed.dart';
part 'map_state.g.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState([@Default([]) List<LandmarkInfo> landmarks]) = _MapState;
  factory MapState.fromJson(Map<String, dynamic> json) => _$MapStateFromJson(json);
}